-- DATEPART + DESAFIOS (AVANÇADO)

SELECT *
FROM Sales.SalesOrderHeader;

-- qual ordem de venda e o mês

SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS 'Mês'
FROM Sales.SalesOrderHeader;

-- qual ordem de venda e o dia

SELECT SalesOrderID, DATEPART(DAY , OrderDate) AS 'Dia'
FROM Sales.SalesOrderHeader;

-- qual ordem de venda e o ano

SELECT SalesOrderID, DATEPART(YEAR , OrderDate) AS 'Ano'
FROM Sales.SalesOrderHeader;

SELECT *
FROM Sales.SalesOrderHeader;

-- média de valor devido por mês

SELECT AVG(TotalDue) AS 'Média', DATEPART(MONTH, OrderDate) AS 'Mês'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate) 
ORDER BY 'Mês';

-- média de valor devido por dia

SELECT AVG(TotalDue) AS 'Média', DATEPART(DAY , OrderDate) AS 'Dia'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY , OrderDate) 
ORDER BY 'Dia';

-- média de valor devido por ano

SELECT AVG(TotalDue) AS 'Média', DATEPART(YEAR , OrderDate) AS 'Ano'
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR , OrderDate) 
ORDER BY 'Ano';