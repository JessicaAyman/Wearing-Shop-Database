create or alter proc sp_Create_Order @user_id int,@order_id int , @option_id int , @quantity int 
as

begin try 
begin transaction

-- user_id validation must be in our users
 
if not exists (select 1 from users where user_id=@user_id) 
  throw 50003, 'User does not exist', 1;

-- option_id validation must be exist in our options
if not exists (select 1 from product_options where option_id=@option_id) 
  throw 50002, 'option does not exist', 1;

-- order_id valiadtion it is a new record must not be in our orders
if exists (select 1 from orders where order_id =@order_id)
  throw 50004 ,'order_id is already exist it must be unique id ',1;

--1. get the price 

declare @price decimal(18,0);
select @price = p.price
        from product_options po
        join products p on po.prod_id = p.prod_id
        where po.option_id = @option_id;

--2. check and update the stock

declare @current_stock int 
select @current_stock= stock from product_options p
where p.option_id=@option_id

if @current_stock >= @quantity
begin 
update product_options
set stock-= @quantity
where option_id = @option_id;
end
else 
  begin
   
    throw 50001, 'Not enough stock', 1;-- أو RAISERROR روح لل catch
    
  end

--3. insert the record into orders
insert into orders (order_id,user_id , order_date ,total_amount, status)
values (@order_id,@user_id,getdate(), 0,'pending')
-- the total amount is set to zero cause the total order items prices not calculated yet


--4. get the last id created 

--declare @order_id int 
--set @order_id = SCOPE_IDENTITY() -- to return the id of the last order created automatically by idintity

--5. insert into order_items

insert into order_items (order_id ,option_id, quantity, price)
values(@order_id ,@option_id ,@quantity , @price)

--6. update the order total amount accourding to the item added
-- now we can add the price of this item to order total amount 
--update orders
--set total_amount += @quantity * @price 
--where order_id = @order_id;

-- مش محتاجين نعمل 
--update total amount علشان
--
--ال trigger هيعملها
 
commit 
end try

begin catch
rollback
 -- طباعة الرسالة
    declare @ErrorMessage nvarchar(4000) = ERROR_MESSAGE();
    print @ErrorMessage;
end catch 

--------------------------------------------------------------------
exec sp_Create_Order 50,56,1,1
select * from orders
select * from product_options where option_id=1
----------------------------------------------------------------

create or alter proc sp_Cancel_Order @order_id int 
as 

begin try 
begin transaction

declare @order_status varchar (50)
declare @option_id int 
declare @quantity int
 select 
 @order_status= o.status , 
 @option_id=oi.option_id ,
 @quantity = oi.quantity 
 from orders o ,order_items oi
 where o.order_id=oi.order_id 
 and o.order_id = @order_id

 if @order_status in ( 'delivered' , 'shipped')
 begin
     
    throw 51001, 'Cannot cancel delivered or shipped order', 1
 end

 else
 begin
     update orders 
     set status ='cancelled'
     where order_id = @order_id
 end

 --update stock ++

update po
set stock = stock + oi.quantity
from product_options po
join order_items oi on po.option_id = oi.option_id
where oi.order_id = @order_id

 commit
 end try
  begin catch
  rollback
   -- طباعة الرسالة
    declare @ErrorMessage nvarchar(4000) = ERROR_MESSAGE();
    print @ErrorMessage;
  end catch

  --------------------------------------------------
  exec sp_Cancel_Order 56
  select * from orders
  select * from product_options where option_id=1

  --------------------------------------------------

  create or alter proc sp_Apply_Promotion_To_Order @order_id int , @promo_id int
  as
  begin try 
  begin transaction
  declare @current_date date 
  set @current_date = getdate()

  ---1. check date 
  if  not exists  (
  select *
  from promotions
  where promo_id = @promo_id
  and @current_date between start_date and end_date
  )
  begin
       throw 52001, 'Invalid promotion at this time', 1;
  end

  ---2. prevent the multiple promotions occure
  if exists (
            select 1
            from order_promotions
            where order_id = @order_id
              and promo_id = @promo_id
        )
  begin
            throw 52002, 'Promotion already applied to this order', 1;

  end


  ---3. insert into order_promotion
  insert into order_promotions (order_id, promo_id)
  values (@order_id, @promo_id);

  -- 4. apply discount
  UPDATE o
SET o.total_amount = o.total_amount - p.discount_valu
FROM orders o
JOIN order_promotions op ON o.order_id = op.order_id
JOIN promotions p ON p.promo_id = op.promo_id
WHERE o.order_id = @order_id
  AND p.promo_id = @promo_id;


 commit 
 end try 
 begin catch
 rollback
  -- طباعة الرسالة
    declare @ErrorMessage nvarchar(4000) = ERROR_MESSAGE();
    print @ErrorMessage;
 end catch 


 -------------------------------------------------
 select * from order_promotions
 exec sp_Apply_Promotion_To_Order 50 , 42
 select * from promotions