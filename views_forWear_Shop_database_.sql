--- هنا بنجيب مبيعات كل عميل 
CREATE  or alter VIEW vw_Total_Sales
AS
SELECT
    u.User_ID,
    u.F_Name +   u.L_Name as User_fullname,
    SUM(o.Total_Amount) AS Total_Spent
FROM Users u
JOIN Orders o
    ON u.User_ID = o.User_ID
GROUP BY 
    u.User_ID, u.F_Name, u.L_Name


    -------
    select * from vw_Total_Sales
    --- نرتب العملاء اللي بيشتروا اكتر 
    order by Total_Spent desc

-------------------------------------------------------------
----- هنا بنجيب المنتجات  اللي عليها طلب 

CREATE OR ALTER VIEW vw_best_Products
AS
SELECT
    p.Prod_ID,
    p.Prod_Name,
    SUM(oi.Quantity) AS Total_Ordered_Quantity,
    COUNT(DISTINCT oi.Order_ID) AS Number_Of_Orders
FROM Products p
JOIN product_options Pr_o
    ON p.prod_id = Pr_o.prod_id
JOIN order_items Oi
    ON Oi.option_id = Pr_o.option_id
GROUP BY
    p.Prod_ID,
    p.Prod_Name

select * from vw_best_Products
--- هنعمل اوردر باي عشان المنتج الاعلي مبيعا 
order by Total_Ordered_Quantity desc



------------------- نتأكد من وجود كميات كافيه داخل ال ستوكات
CREATE OR ALTER VIEW vw_low_stock_products
AS
SELECT 
    p.Prod_ID,
    p.Prod_Name,
    po.Option_ID,
    po.Size,
    po.Color,
    po.Stock
FROM Product_Options po
JOIN Products p 
ON po.Prod_ID = p.Prod_ID
WHERE po.Stock <= 5

select * from vw_low_stock_products
