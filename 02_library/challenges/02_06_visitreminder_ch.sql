-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT l.PatronID, p.FirstName, Email, COUNT (loanDate)
FROM
Loans AS l
JOIN Patrons AS p
ON l.PatronID = p.PatronID
GROUP BY l.PatronID
HAVING COUNT(LoanDate) < 15; 

