SELECT * FROM Cart
SELECT * FROM Categories
SELECT * FROM Exports
SELECT * FROM History_update_product
SELECT * FROM Imports
SELECT * FROM Listproduct
SELECT * FROM Manufacture
SELECT * FROM notifications
SELECT * FROM Orders
SELECT * FROM Person
SELECT * FROM Product_In_Stock
SELECT * FROM Products
SELECT * FROM Salary



DROP TABLE Cart
DROP TABLE Exports
DROP TABLE History_update_product
DROP TABLE Imports
DROP TABLE Listproduct
DROP TABLE notifications
DROP TABLE Orders
DROP TABLE Product_In_Stock
DROP TABLE Products
DROP TABLE Salary
DROP TABLE Categories
DROP TABLE Manufacture
DROP TABLE Person


SELECT Products.*, History_update_product.price_cur
FROM History_update_product INNER JOIN
Products ON History_update_product.product_id = Products.product_id

INSERT INTO History_update_product ([product_id], [employee_id], [price_cur], [date], [content])
VALUES
    (1, 2, 9999.00, '2024-03-10', ''),


SELECT p.*, h.price_cur
FROM Products p
 JOIN (
    SELECT product_id, price_cur
    FROM History_update_product hup
    WHERE hup.date = (
        SELECT MAX(date) 
        FROM History_update_product 
        WHERE product_id = hup.product_id
    )
) h ON p.product_id = h.product_id 
where category_id = 6

SELECT * FROM Product_In_Stock where product_id = 3
SELECT p.*, h.price_cur
FROM Products p
 JOIN (
    SELECT product_id, price_cur
    FROM History_update_product hup
    WHERE hup.date = (
        SELECT MAX(date) 
        FROM History_update_product 
        WHERE product_id = hup.product_id
    )
) h ON p.product_id = h.product_id 
where category_id = 6

delete from person where person_id = 5