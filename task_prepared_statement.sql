PREPARE GetOrderDetail FROM 
'SELECT Order_id AS "OrderID", Quantity, Total_cost AS "Cost" FROM orders WHERE Order_id = ?';

SET @id=1;
EXECUTE GetOrderDetail USING @id;