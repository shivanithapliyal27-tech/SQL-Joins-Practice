
CREATE DATABASE SQLJoinsPractice;

USE SQLJoinsPractice;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Customers VALUES
(1, 'Aarav Sharma', 'India'),
(2, 'Priya Verma', 'India'),
(3, 'John Smith', 'USA'),
(4, 'Emma Wilson', 'UK'),
(5, 'Rahul Mehta', 'India');

INSERT INTO Orders VALUES
(101, 1, '2026-01-10', 2500.00),
(102, 2, '2026-01-12', 1800.00),
(103, 1, '2026-02-05', 3200.00),
(104, 3, '2026-02-15', 4500.00),
(105, 2, '2026-03-01', 1200.00);
GO

SELECT * FROM Customers;
SELECT * FROM Orders;



USE SQLJoinsPractice;

SELECT
    c.CustomerID,
    c.CustomerName,
    o.OrderID,
    o.Amount
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID;


SELECT
    c.CustomerID,
    c.CustomerName,
    c.Country,
    o.OrderID,
    o.Amount
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
ORDER BY c.CustomerID;



SELECT 'INNER JOIN' AS JoinType,
       COUNT(*) AS TotalRows
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID

UNION ALL

SELECT 'LEFT JOIN',
       COUNT(*)
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID;


SELECT
    c.CustomerID,
    c.CustomerName,
    COUNT(o.OrderID) AS TotalOrders,
    COALESCE(SUM(o.Amount), 0) AS TotalSpending
FROM Customers c
LEFT JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID,
    c.CustomerName
ORDER BY TotalSpending DESC;



SELECT
    c.CustomerID,
    c.CustomerName,
    c.Country
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL;


SELECT
    c.CustomerID,
    c.CustomerName,
    COUNT(o.OrderID) AS TotalOrders
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName
ORDER BY TotalOrders DESC;


SELECT
    c.CustomerName,
    COALESCE(SUM(o.Amount), 0) AS TotalSales
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName
ORDER BY TotalSales DESC;


SELECT
    c.CustomerName,
    o.OrderID,
    o.OrderDate,
    o.Amount
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
WHERE o.Amount > 2000
ORDER BY o.Amount DESC;


SELECT
    c.Country,
    COUNT(DISTINCT c.CustomerID) AS TotalCustomers,
    COUNT(o.OrderID) AS TotalOrders,
    COALESCE(SUM(o.Amount), 0) AS TotalSales
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY c.Country
ORDER BY TotalSales DESC;



SELECT
    c.CustomerName,
    o.OrderID,
    o.OrderDate,
    o.Amount
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
ORDER BY o.OrderDate;


SELECT
    c.CustomerName,
    SUM(o.Amount) AS TotalSpending
FROM Customers AS c
INNER JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CustomerName
HAVING SUM(o.Amount) > 3000
ORDER BY TotalSpending DESC;


SELECT
    o.OrderID,
    c.CustomerName,
    c.Country,
    o.Amount
FROM Orders AS o
INNER JOIN Customers AS c
    ON o.CustomerID = c.CustomerID
ORDER BY c.Country, o.OrderID;


SELECT
    c.CustomerID,
    c.CustomerName,
    c.Country,
    CASE
        WHEN o.OrderID IS NULL THEN 'No Orders'
        ELSE 'Has Orders'
    END AS OrderStatus
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID,
    c.CustomerName,
    c.Country,
    CASE
        WHEN o.OrderID IS NULL THEN 'No Orders'
        ELSE 'Has Orders'
    END
ORDER BY c.CustomerID;


