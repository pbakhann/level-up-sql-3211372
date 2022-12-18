-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT *
FROM Reservations AS R
JOIN Customers AS c 
ON r.customerID = c.customerID
WHERE 
LastName LIKE 'St%' AND PartySize = 4
ORDER BY Date DESC; 