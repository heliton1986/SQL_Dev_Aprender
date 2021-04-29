-- HAVING +  DESAFIOS (INTERMEDI�RIO)

/*
O HAVING � basicamente muito usado em jun��o com o group by
para filtrar resultados de um agrupamento.

� um WHERE para dados agrupados.

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condicao;

A grande diferen�a entre HAVING  e WHERE:
	O HAVING � aplicado depois que os dados j� foram agrupados, enquanto
	o WHERE � aplicado antes dos dados serem agrupados.
*/

/*
	Vamos dizer que queremos saber quais nomes no sistema tem uma 
	ocorr�ncia maior que 10 vezes
*/

SELECT * FROM Person.Person;

SELECT FirstName, COUNT(firstname) AS 'Quantidade'
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10;

/*
Queremos saber quais produtos que no total de vendas est�o
entre 162k a 500k
*/
SELECT * FROM Sales.SalesOrderDetail;

SELECT productID, SUM(LineTotal) AS 'Total de Vendas'
FROM Sales.SalesOrderDetail
GROUP BY productID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000;

/*
	Vamos dizer que queremos saber quais nomes no sistema tem uma 
	ocorr�ncia maior que 10 vezes, por�m somente onde o t�tulo � 'Mr.'
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
 1 - Estamos querendo identificar as prov�ncias(StateProvinceID) com o maior
 n�mero no nosso sistema, ent�o � preciso encontrar quais prov�ncias est�o
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
 produtos(productID) n�o est�o trazendo em m�dia no m�nimo 1 milh�o em total
 de vendas(lineTotal)
 */
SELECT TOP 10 * FROM Sales.SalesOrderDetail;

SELECT productID, AVG(lineTotal) AS 'M�dia' 
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000 

















