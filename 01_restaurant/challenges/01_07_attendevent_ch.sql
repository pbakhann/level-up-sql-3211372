-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

INSERT INTO customer_response
VALUES ((SELECT CustomerID
FROM customers
WHERE Email = 'atapley2j@kinetecoinc.com'), 3);

SELECT *
FROM customer_response;

UPDATE customer_response 
SET NumberofGuests = 4 
WHERE customerID = 92;