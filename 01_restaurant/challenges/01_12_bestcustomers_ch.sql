-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

SELECT c.customerID, FirstName, LastName, Email, COUNT(OrderID) AS NumberofOrders
FROM 
Customers AS C
JOIN orders AS O
ON c.CustomerID = o.customerID
GROUP BY c.customerID
HAVING COUNT(OrderID) >= 15
ORDER BY NumberofOrders DESC;


