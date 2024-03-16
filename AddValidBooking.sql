DELIMITER //
CREATE PROCEDURE AddValidBooking(IN BookingDate DATE, IN TableNo INT)
BEGIN
	DECLARE isBooked BOOLEAN DEFAULT FALSE; 
    DECLARE bookingId INT;
    
	START TRANSACTION;
	SELECT EXISTS (
		SELECT 1 FROM bookings
        WHERE booking_date = BookingDate AND Table_no = TableNo
    ) INTO isBooked;
    
    IF isBooked THEN
		ROLLBACK;
        SELECT CONCAT('Table ', TableNo, ' is already booked - booking cancelled') AS 'Booking Status';
	ELSE         
		INSERT INTO Bookings (Booking_date, Table_no)
        VALUES (BookingDate, TableNo);
		COMMIT;
        SELECT CONCAT('Table ', TableNo, ' is available - booking confirmed') AS 'Booking Status';
	END IF;
END //
DELIMITER ;

call AddValidBooking('2022-12-17', 6);