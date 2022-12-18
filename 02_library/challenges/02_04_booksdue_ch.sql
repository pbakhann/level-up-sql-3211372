-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT l.DueDate, b.Title, p.FirstName,p.LastName, p.Email
FROM Books AS b 
JOIN Loans AS l 
ON b.BookID = l.BookID
JOIN Patrons AS p
ON p.patronID = l.patronID
WHERE l.DueDate = '2022-07-13'
AND ReturnedDate IS NULL;

