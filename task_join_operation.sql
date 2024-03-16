SELECT c.customer_id AS "CustomerID", c.customer_name AS "FullName", 
o.order_id AS "OrderID", o.total_cost AS "Cost", m.name AS "MenuName",
mi.course_name AS "CourseName", mi.starter_name AS "StarterName"
FROM customers c
JOIN bookings b ON c.customer_id = b.customer_id
JOIN orders o ON b.booking_id = o.booking_id
JOIN menu m ON o.menu_id = m.menu_id 
JOIN `menu items` mi ON m.menu_item_id = mi.menu_item_id
WHERE o.total_cost > 150
ORDER BY o.total_cost ASC;