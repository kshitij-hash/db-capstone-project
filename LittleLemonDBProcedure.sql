DELIMITER //

CREATE PROCEDURE CancelOrder(IN id INT)
BEGIN
	DECLARE confirmationmsg VARCHAR(255);
	IF EXISTS (SELECT * FROM Orders WHERE order_id = id) THEN
		DELETE FROM orders WHERE order_id = id;
        SET confirmationmsg = CONCAT('Order ', id, ' is cancelled');
	ELSE
		SET confirmationmsg = CONCAT('Order ', id, ' does not exist');
	END IF;
    
    SELECT 'Confirmation';
    SELECT confirmationmsg; 
END //
DELIMITER ;

call CancelOrder(3);