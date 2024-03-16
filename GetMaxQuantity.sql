CREATE PROCEDURE GetMaxQuantity()
SELECT MAX(quantity) AS "Max Quantity in Order" FROM orders;

CALL GetMaxQuantity();