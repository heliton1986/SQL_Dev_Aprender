-- DATEPART + DESAFIOS (AVAN�ADO)

SELECT *
FROM Sales.SalesOrderHeader;

-- qual ordem de venda e o m�s

SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS 'M�s'
FROM Sales.SalesOrderHeader;

-- qual ordem de venda e o dia

SELECT SalesOrderID, DATEPART(DAY , OrderDate) AS 'Dia'
FROM Sales.SalesOrderHeader;

-- qual ordem de venda e o ano

SELECT SalesOrderID, DATEPART(YEAR , OrderDate) AS 'Ano'
FROM Sales.SalesOrderHeader;

SELECT *
FROM Sales.SalesOrderHeader;

-- m�dia de valor devido por m�s

SELECT AVG(TotalDue) AS 'M�dia', DATEPART(MONTH, OrderDate) AS 'M�s'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate) 
ORDER BY 'M�s';

-- m�dia de valor devido por dia

SELECT AVG(TotalDue) AS 'M�dia', DATEPART(DAY , OrderDate) AS 'Dia'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY , OrderDate) 
ORDER BY 'Dia';

-- m�dia de valor devido por ano

SELECT AVG(TotalDue) AS 'M�dia', DATEPART(YEAR , OrderDate) AS 'Ano'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR , OrderDate) 
ORDER BY 'Ano';