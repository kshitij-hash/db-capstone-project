USE littlelemondb;

CREATE VIEW OrdersView AS
SELECT Order_id, Quantity, Total_cost
FROM Orders WHERE Quantity > 2;