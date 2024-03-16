SELECT name AS "MenuName" FROM menu
WHERE menu_id = ANY (
	SELECT menu_id
    FROM orders
    WHERE quantity > 2
)