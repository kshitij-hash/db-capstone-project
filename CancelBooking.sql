DELIMITER //

CREATE PROCEDURE CancelBooking(IN BookingID INT)
BEGIN
	DECLARE isBooked BOOLEAN DEFAULT FALSE;
    
    SELECT EXISTS (
		SELECT 1 FROM bookings
        WHERE Booking_id = BookingID
    ) INTO isBooked;
    
    IF isBooked THEN    
		DELETE FROM bookings 
		WHERE Booking_id = BookingID;
		SELECT CONCAT('Booking ', BookingID, ' cancelled') AS "Confirmation";
	ELSE 
		SELECT CONCAT('Booking ', BookingID, " doesn't exist") AS 'Confirmation';
	END IF;
END //

DELIMITER ;

CALL CancelBooking(9);