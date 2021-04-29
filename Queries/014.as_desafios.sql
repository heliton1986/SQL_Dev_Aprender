-- AS + DESAFIOS (INTERMEDIARIO)

SELECT TOP 10 *
FROM Production.Product;

-- TROCAR NOME DE UMA COLUNA
SELECT TOP 10 listPrice AS 'Preço'
FROM Production.product;

SELECT TOP 10 AVG(listPrice) AS 'Preço Médio'
FROM Production.Product;

-- DESAFIOS

/*
1 - Encontrar o nome e sobrenome da tabela person.person e inserir nome em BR
*/
SELECT firstName AS 'Nome', lastName AS 'Sobrenome'
FROM Person.Person;

/*
2 - Tabela production.product coluna ProductNumber "Número do produto"
 */
SELECT productNumber AS 'Número do Produto'
FROM Production.Product;

/*
 3 - Sales.salesOrderDetail coluna unitPrice ""
 */
SELECT UnitPrice AS 'Preço Unitário'
FROM Sales.SalesOrderDetail;











