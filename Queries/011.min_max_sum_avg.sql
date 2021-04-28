-- MIN MAX SUM AVG

/*  
 Funções de agregação basicamente agregam ou combinam dados de uma tabela 
em 1 resultado só
*/

SELECT  TOP 10 linetotal 
FROM Sales.SalesOrderDetail;

SELECT TOP 10 SUM(lineTotal) AS 'Soma'
FROM Sales.SalesOrderDetail;

SELECT TOP 10 MIN(lineTotal) AS 'Valor Mínimo'
FROM Sales.SalesOrderDetail;

SELECT  TOP 10 LineTotal 
FROM Sales.SalesOrderDetail
WHERE linetotal BETWEEN 1 AND 3;

SELECT TOP 10 MAX(LineTotal) AS 'Valor Máximo'
FROM Sales.SalesOrderDetail;

SELECT *
FROM Sales.SalesOrderDetail;

SELECT TOP 5 AVG(LineTotal) AS 'Média'
FROM Sales.SalesOrderDetail;












