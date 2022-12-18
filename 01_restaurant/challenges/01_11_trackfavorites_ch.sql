-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

UPDATE Customers
SET FavoriteDish = ( SELECT DishID 
FROM Dishes
WHERE Name = 'Quinoa Salmon Salad')
WHERE CustomerID = 42;

SELECT *
FROM 
Customers
WHERE CustomerID = 42 ;
