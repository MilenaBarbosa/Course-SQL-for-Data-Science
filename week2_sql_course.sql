-- Course SQL for Data Science (COURSERA- UCDAVIS)
-- Week 2

-- 1.  Run Query: Find all the tracks that have a length of 5,000,000 milliseconds or more.

SELECT Milliseconds
FROM Tracks
WHERE Milliseconds >= '5000000';


--  2. Run Query: Find all the invoices whose total is between $5 and $15 dollars.

SELECT total
FROM  invoices 
WHERE  total BETWEEN '5' AND '15';

-- 3. Run Query: Find all the customers from the following States: RJ, DF, AB, BC, CA, WA, NY.

SELECT state,
Company,
FirstName
FROM customers
WHERE state IN ('RJ', 'DF', 'AB', 'BC', 'CA', 'WA', 'NY');

-- 4. Run Query: Find all the invoices for customer 56 and 58 where the total was between $1.00 and $5.00.

SELECT CustomerId,
InvoiceId,
InvoiceDate
Total
FROM Invoices
WHERE InvoiceId = '315';

-- 5. Run Query: Find all the tracks whose name starts with 'All'.

SELECT Name
FROM Tracks 
WHERE Name like 'All%';

-- 6. Run Query: Find all the customer emails that start with "J" and are from gmail.com.

SELECT email
FROM Customers
WHERE email LIKE 'J%gmail.com';

-- 7. Run Query: Find all the invoices from the billing city Brasília, Edmonton, and Vancouver and sort in descending order by invoice ID.

SELECT BillingCity,
InvoiceId, 
Total
FROM Invoices
WHERE BillingCity IN ('Brasília', 'Edmonton', 'Vancouver')
ORDER BY InvoiceId DESC;

-- 8. Run Query: Show the number of orders placed by each customer (hint: this is found in the invoices table) and sort the result by the number of orders in descending order.

SELECT CustomerId, COUNT(*) AS Orders
FROM invoices
GROUP BY CustomerId
ORDER BY Total DESC;

-- 9. Run Query: Find the albums with 12 or more tracks.

SELECT AlbumId, COUNT(*) AS TracksNumber
FROM tracks 
GROUP BY AlbumId
HAVING COUNT(*) >= 12;