
------when user buy an order the stock reduced

CREATE TRIGGER trg_reduce_stock
ON order_items
AFTER INSERT
AS
BEGIN
    UPDATE po
    SET po.stock = po.stock - i.quantity
    FROM product_options po
    JOIN inserted i ON po.option_id = i.option_id
END;

---------------------------------------------------

-----Preventing the purchase of a quantity larger than available


CREATE TRIGGER trg_check_stock
ON order_items
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN product_options po ON i.option_id = po.option_id
        WHERE i.quantity > po.stock
    )
    BEGIN
        RAISERROR('Not enough stock available',16,1)
        RETURN
    END

    INSERT INTO order_items
    SELECT * FROM inserted
END;


---------------------------------------------------------------------
-------Function Calculates total order


CREATE OR ALTER TRIGGER trg_update_order_total
ON order_items
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE o
    SET total_amount = ISNULL((
        SELECT SUM(quantity * price)
        FROM order_items oi
        WHERE oi.order_id = o.order_id
    ),0)
    FROM orders o
    WHERE o.order_id IN (
        SELECT order_id FROM inserted
        UNION
        SELECT order_id FROM deleted
    );
END;

---------------------------------------------------------
 
-------------------------------------------------------------------

-----Trigger prevents any modifications after the order is received

CREATE or alter TRIGGER trg_lock_delivered_orders
ON orders
INSTEAD OF UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN deleted d ON i.order_id = d.order_id
        WHERE d.status = 'delivered'
    )
    BEGIN
        RAISERROR('Delivered orders cannot be modified.',16,1)
        RETURN
    END

    UPDATE orders
    SET status = i.status
    FROM inserted i
    WHERE orders.order_id = i.order_id
END;

----------------------------------------------------------------------

select * from orders where status='delivered'
update orders 
set user_id =48
where user_id =8

--------------------------------------------------------------------

---- Function returns the remaining balance in Order

CREATE FUNCTION  fn_remaining_amount (@order_id INT)
RETURNS DECIMAL(18,0)
AS
BEGIN
    DECLARE @total DECIMAL(18,0)
    DECLARE @paid DECIMAL(18,0)

    SELECT @total = total_amount FROM orders WHERE order_id = @order_id
    SELECT @paid = SUM(amount) FROM payments WHERE order_id = @order_id

    RETURN ISNULL(@total,0) - ISNULL(@paid,0)
END;

-------------------------------------------------------------------------
select o.order_id ,total_amount ,sum (amount ) as [paied_amount] from orders o , payments p  
where o.order_id = p.order_id 
group by user_id , total_amount , o.order_id
having  sum (amount ) > total_amount

select  sum (amount ) from Payments where order_id=50
SELECT dbo.fn_remaining_amount(50) -- negative number
------------------------------------------------------------------------------------


------Cursor changes status if payment is completed


DECLARE @order_id INT
DECLARE @remaining DECIMAL(18,0)

DECLARE order_cursor CURSOR FOR
SELECT order_id FROM orders

OPEN order_cursor
FETCH NEXT FROM order_cursor INTO @order_id

WHILE @@FETCH_STATUS = 0
BEGIN
    SELECT @remaining = dbo.fn_remaining_amount(@order_id)

    IF @remaining = 0
    BEGIN
        UPDATE orders
        SET status = 'paid'
        WHERE order_id = @order_id
    END

    FETCH NEXT FROM order_cursor INTO @order_id
END

CLOSE order_cursor
DEALLOCATE order_cursor
