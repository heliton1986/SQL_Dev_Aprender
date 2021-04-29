-- HAVING +  DESAFIOS (INTERMEDIÁRIO)

/*
O HAVING é basicamente muito usado em junção com o group by
para filtrar resultados de um agrupamento.

É um WHERE para dados agrupados.

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condicao;

A grande diferença entre HAVING  e WHERE:
	O HAVING é aplicado depois que os dados já foram agrupados, enquanto
	o WHERE é aplicado antes dos dados serem agrupados.
*/

/*
	Vamos dizer que queremos saber quais nomes no sistema tem uma 
	ocorrência maior que 10 vezes
*/

SELECT * FROM Person.Person;

SELECT FirstName, COUNT(firstname) AS 'Quantidade'
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

/*
Queremos saber quais produtos que no total de vendas estão
entre 162k a 500k
*/
SELECT * FROM Sales.SalesOrderDetail;

SELECT productID, SUM(LineTotal) AS 'Total de Vendas'
FROM Sales.SalesOrderDetail
GROUP BY productID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000;

/*
	Vamos dizer que queremos saber quais nomes no sistema tem uma 
	ocorrência maior que 10 vezes, porém somente onde o título é 'Mr.'
*/
SELECT TOP 10 *
FROM Person.Person;

SELECT firstname, COUNT(firstname)
FROM Person.Person
WHERE Title = 'Mr.' 
GROUP BY FirstName 
HAVING COUNT(firstname) > 10 

-- DESAFIOS

/*
 1 - Estamos querendo identificar as províncias(StateProvinceID) com o maior
 número no nosso sistema, então é preciso encontrar quais províncias estão
 registradas no banco de dados mais que 1000 vezes
 */
SELECT TOP 10 *
FROM Person.Address;

SELECT StateProvinceId, COUNT(StateProvinceID) AS 'Quantidade'
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000; 

/*
 2 - Sendo que se trata de uma multinacional, os gerentes querem saber quais
 produtos(productID) não estão trazendo em média no mínimo 1 milhão em total
 de vendas(lineTotal)
 */
SELECT TOP 10 * FROM Sales.SalesOrderDetail;

SELECT productID, AVG(lineTotal) AS 'Média' 
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000 

















