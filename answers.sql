-- telling the engine to use salesdb database
USE salesdb;

-- Question 1
-- selecting 4 columns from employees table and using INNER JOIN function
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o
ON e.officeCode=o.officeCode

-- Question 2
Selecting 3 columns from products table and using LEFT JOIN
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines l
ON p.productLine=l.productLine;

-- Question 3
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
ON c.customerNumber=o.customerNumber
ORDER BY o.orderDate
LIMIT 10;