-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.


SELECT PatronID
FROM Patrons
WHERE FirstName = 'Jack' AND LastName = 'Vaan';

SELECT BookID 
FROM Books
WHERE Title = 'The Picture of Dorian Gray' AND Barcode = 2855934983;

SELECT BookID 
FROM Books
WHERE Title = 'Great Expectations' AND Barcode = 4043822646;

-- Book 1: The Picture of Dorian Gray, 2855934983
INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES (
(SELECT BookID 
FROM Books
WHERE Title = 'The Picture of Dorian Gray' AND Barcode = 2855934983),
(SELECT PatronID 
FROM Patrons
WHERE FirstName = 'Jack' AND LastName = 'Vaan'),
'2022-08-25',
'2022-9-8');

-- Book 2: Great Expectations, 4043822646
INSERT INTO Loans (BookID, PatronID, LoanDate, DueDate)
VALUES (
(SELECT BookID 
FROM Books
WHERE Title = 'Great Expectations' AND Barcode = 4043822646),
(SELECT PatronID 
FROM Patrons
WHERE FirstName = 'Jack' AND LastName = 'Vaan'),
'2022-08-25',
'2022-9-8');

SELECT *
FROM Loans
WHERE PatronID = (SELECT PatronID
FROM  Patrons
WHERE FirstName = 'Jack' AND LastName = 'Vaan')
ORDER BY LoanID DESC ;