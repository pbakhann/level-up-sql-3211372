-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT * 
FROM dishes 
ORDER BY price;

SELECT type 
FROM
dishes
WHERE type = 'Appetizer' OR type = 'Beverage'
ORDER BY type;

SELECT * 
FROM dishes
WHERE type != 'Beverage'
ORDER BY type;
