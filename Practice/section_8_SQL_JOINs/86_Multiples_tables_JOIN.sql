
SELECT
    o.OrderDate,
    o.Sales,
    COALESCE(c.FirstName, ' ') + ' ' + COALESCE(c.LastName, ' ') AS FullNameCustomer,
    p.Product,
    p.Price,
    COALESCE(e.FirstName, ' ') + ' ' + COALESCE(e.LastName, ' ') AS FullNameEmployee
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees AS e
ON o.SalesPersonID = e.EmployeeID