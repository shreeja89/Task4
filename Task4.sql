Task4
queries used in task4

USE classicmodels;
DESCRIBE customers;

1.Using SELECT, WHERE, ORDER BY, GROUP BY

SELECT * FROM customers LIMIT 10;

SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country
ORDER BY COUNT(*) DESC;

SELECT c.customerNumber, c.customerName, SUM(p.amount) AS total_sales
FROM customers c
JOIN payments p ON c.customerNumber = p.customerNumber
GROUP BY c.customerNumber, c.customerName
ORDER BY SUM(p.amount) DESC;

SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country;

SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC;

2.Using JOINS (INNER, LEFT, RIGHT)

SELECT 
    c.customerName,
    e.firstName AS salesRepFirstName,
    e.lastName AS salesRepLastName
FROM customers c
INNER JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber;

SELECT 
    c.customerName,
    p.amount
FROM customers c
LEFT JOIN payments p ON c.customerNumber = p.customerNumber
ORDER BY c.customerName;

SELECT 
    p.customerNumber,
    c.customerName,
    p.amount
FROM payments p
LEFT JOIN customers c ON p.customerNumber = c.customerNumber;

3.Use aggregate functions (SUM, AVG)

SELECT customerNumber, SUM(amount) AS total_paid
FROM payments
GROUP BY customerNumber
ORDER BY SUM(amount) DESC;

SELECT 
    orderNumber,
    AVG(priceEach * quantityOrdered) AS avg_order_value
FROM orderdetails
GROUP BY orderNumber;

4.subqueries

SELECT customerNumber, amount
FROM payments
WHERE amount > (SELECT AVG(amount) FROM payments);

5.Creating views for analysis

-- Drop the view if it exists (syntax varies slightly by DBMS)
DROP VIEW IF EXISTS high_value_customers;

-- Create the view
CREATE VIEW high_value_customers AS
SELECT customerNumber, customerName, creditLimit
FROM customers
WHERE creditLimit > 100000;

6.Optimize queries with indexes

CREATE INDEX idx_customer_number ON payments(customerNumber);

CREATE INDEX idx_order_status ON orders(status);



