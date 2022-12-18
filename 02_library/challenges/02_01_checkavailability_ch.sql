-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(Title)
FROM Books
WHERE Title = 'Dracula';

SELECT COUNT(b.Title)
FROM Books AS b
JOIN Loans AS l
ON b.BookID = l.BookID 
WHERE b.Title = 'Dracula'
AND ReturnedDate IS NULL;

SELECT 
(SELECT COUNT(Title)
FROM Books
WHERE Title = 'Dracula') - 
(SELECT COUNT(b.Title)
FROM Books AS b
JOIN Loans AS l
ON b.BookID = l.BookID 
WHERE b.Title = 'Dracula'
AND ReturnedDate IS NULL) 
AS AvailableCopies;
