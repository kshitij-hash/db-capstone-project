DELIMITER //
CREATE PROCEDURE CheckBooking(IN bookingDate DATE, IN tableNo INT)
BEGIN
	DECLARE isBooked BOOLEAN DEFAULT FALSE;
    
    SELECT EXISTS (
        SELECT 1 FROM Bookings
        WHERE booking_date = bookingDate AND table_no = tableNo
    ) INTO isBooked;
    
    IF isBooked THEN
		SELECT CONCAT('Table ', tableNo, ' is already booked') AS 'Booking Status';
	ELSE 
		SELECT CONCAT('Table ', tableNo, ' is available') AS 'Booking Status';
	END IF;
END //
DELIMITER ;

call CheckBooking('2022-11-12', 3);