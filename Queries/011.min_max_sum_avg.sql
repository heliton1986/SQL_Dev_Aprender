-- MIN MAX SUM AVG

/*  
 Fun��es de agrega��o basicamente agregam ou combinam dados de uma tabela 
em 1 resultado s�
*/

SELECT  TOP 10 linetotal 
FROM Sales.SalesOrderDetail;

SELECT TOP 10 SUM(lineTotal) AS 'Soma'
FROM Sales.SalesOrderDetail;

SELECT TOP 10 MIN(lineTotal) AS 'Valor M�nimo'
FROM Sales.SalesOrderDetail;

SELECT  TOP 10 LineTotal 
FROM Sales.SalesOrderDetail
WHERE linetotal BETWEEN 1 AND 3;

SELECT TOP 10 MAX(LineTotal) AS 'Valor M�ximo'
FROM Sales.SalesOrderDetail;

SELECT *
FROM Sales.SalesOrderDetail;

SELECT TOP 5 AVG(LineTotal) AS 'M�dia'
FROM Sales.SalesOrderDetail;












