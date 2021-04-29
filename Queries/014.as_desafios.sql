-- AS + DESAFIOS (INTERMEDIARIO)

SELECT TOP 10 *
FROM Production.Product;

-- TROCAR NOME DE UMA COLUNA
SELECT TOP 10 listPrice AS 'Pre�o'
FROM Production.product;

SELECT TOP 10 AVG(listPrice) AS 'Pre�o M�dio'
FROM Production.Product;

-- DESAFIOS

/*
1 - Encontrar o nome e sobrenome da tabela person.person e inserir nome em BR
*/
SELECT firstName AS 'Nome', lastName AS 'Sobrenome'
FROM Person.Person;

/*
2 - Tabela production.product coluna ProductNumber "N�mero do produto"
 */
SELECT productNumber AS 'N�mero do Produto'
FROM Production.Product;

/*
 3 - Sales.salesOrderDetail coluna unitPrice ""
 */
SELECT UnitPrice AS 'Pre�o Unit�rio'
FROM Sales.SalesOrderDetail;











