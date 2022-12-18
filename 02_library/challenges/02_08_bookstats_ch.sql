-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
SELECT Published, COUNT(DISTINCT(Title)) AS NumberofBooks
FROM Books 
GROUP BY Published
ORDER BY NumberofBooks DESC ; 


-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Title, COUNT(LoanID)
FROM Loans AS l 
JOIN Books as b
ON l.BookID = b.BookID
GROUP BY b.Title
ORDER BY COUNT(LoanID) DESC
LIMIT 5;
