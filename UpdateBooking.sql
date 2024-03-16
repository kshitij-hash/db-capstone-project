DELIMITER //
CREATE PROCEDURE UpdateBooking(IN BookingID INT, IN BookingDate DATE) 
BEGIN
	DECLARE isBooked BOOLEAN DEFAULT FALSE;
    
    SELECT EXISTS (
		SELECT 1 FROM bookings
        WHERE Booking_id = BookingID
    ) INTO isBooked;
    
    IF isBooked THEN
		UPDATE bookings
		SET booking_date = BookingDate
		WHERE booking_id = BookingID;
		SELECT CONCAT('Booking ', BookingID, ' updated') AS "Confirmation";
	ELSE
		SELECT CONCAT('Booking ', BookingID, " doesn't exist") AS 'Confirmation';
    END IF;
END //
DELIMITER ;

CALL UpdateBooking(9, '2022-12-17');