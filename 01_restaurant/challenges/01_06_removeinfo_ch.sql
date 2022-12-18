-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT *
FROM reservations AS r
JOIN Customers AS c
ON r.customerID = c.customerID
WHERE FirstName = 'Norby'
ORDER BY Date DESC;

DELETE FROM Reservations
WHERE ReservationID = 2000;
