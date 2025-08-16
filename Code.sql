-- Top-selling products
SELECT t.Name AS track_name, SUM(il.Quantity) AS total_sold
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
GROUP BY t.Name
ORDER BY total_sold DESC
LIMIT 10;

-- Revenue per Country
SELECT BillingCountry, ROUND(SUM(Total), 2) AS revenue
FROM Invoice
GROUP BY BillingCountry
ORDER BY revenue DESC;

-- Monthly Revenue
SELECT DATE_FORMAT(InvoiceDate, '%Y-%m') AS month,ROUND(SUM(Total), 2) AS monthly_revenue
FROM Invoice
GROUP BY month
ORDER BY month;

-- Use Window Functions

-- Rank customers by total purchase
SELECT CONCAT(c.FirstName, ' ', c.LastName) AS customer_name,SUM(i.Total) AS total_spent,
  RANK() OVER (ORDER BY SUM(i.Total) DESC) AS spending_rank
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, c.FirstName, c.LastName
ORDER BY spending_rank;

-- ROW_NUMBER per genre
SELECT g.Name AS genre,t.Name AS track,
  ROW_NUMBER() OVER (PARTITION BY g.Name ORDER BY t.TrackId) AS row_num
FROM Track t
JOIN Genre g ON t.GenreId = g.GenreId;




