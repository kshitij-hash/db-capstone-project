DELIMITER //

CREATE PROCEDURE AddBooking(IN BookingID INT, IN CustomerID INT, IN TableNo INT, IN BookingDate DATE)
BEGIN
	DECLARE isBooked BOOLEAN DEFAULT FALSE;
    
    SELECT EXISTS (
		SELECT 1 FROM bookings
        WHERE Booking_id = BookingID
    ) INTO isBooked;
    
    IF isBooked THEN
		SELECT "Table is already booked" AS "Confirmation";
	ELSE 
		INSERT INTO bookings (Booking_id, Booking_date, Table_no, Customer_id)
		VALUES (BookingID, BookingDate, TableNo, CustomerID);
		SELECT "New Booking Added" AS "Confirmation";
	END IF;
END //

DELIMITER ;

CALL AddBooking(9, 3, 4, '2022-12-30');