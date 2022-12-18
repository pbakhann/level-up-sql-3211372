-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

SELECT *
FROM
Loans AS l
JOIN 
Books AS b 
ON l.BookID = b.BookID 
WHERE Barcode = 6435968624 OR
Barcode = 5677520613 OR 
Barcode = 8730298424
ORDER BY ReturnedDate DESC;

-- Book 1: 6435968624
UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE LoanID= 
(SELECT LoanID
FROM
Loans AS l
JOIN 
Books AS b 
ON l.BookID = b.BookID 
WHERE Barcode = 6435968624
AND ReturnedDate IS NULL);

-- Book 2: 5677520613
UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE LoanID= 
(SELECT LoanID
FROM
Loans AS l
JOIN 
Books AS b 
ON l.BookID = b.BookID 
WHERE Barcode = 5677520613
AND ReturnedDate IS NULL);

-- Book 3: 8730298424
UPDATE Loans
SET ReturnedDate = '2022-07-05'
WHERE LoanID= 
(SELECT LoanID
FROM
Loans AS l
JOIN 
Books AS b 
ON l.BookID = b.BookID 
WHERE Barcode = 8730298424
AND ReturnedDate IS NULL);