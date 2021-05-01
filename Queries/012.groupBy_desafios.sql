-- GROUP BY + DESAFIOS

/*
 O GROUP BY basicamente divide o resultado da sua pesquisa em grupos
 - Para cada grupo, voc� pode aplicar uma fun��o de agrega��o, por exemplo:
 	- calcular a soma de itens;
 	- contar o n�mero de itens naquele grupo.
 	
 	SELECT coluna1, funcaoAgregacao(coluna2)
 	FROM nomeTabela
 	GROUP BY coluna1;
*/

SELECT *
FROM Sales.SalesOrderDetail;

-- AGRUPAR COLUNAS SpecialOfferID e UnitPrice
SELECT SpecialOfferID, SUM(UnitPrice) AS 'Soma'
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;

-- VERIFICANDO COLUNA SpecialOfferID = 9
SELECT SpecialOfferId, UnitPrice 
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9;

-- Vamos dizer que eu quero saber quantos cada produto foi vendido at� hoje
SELECT * FROM Sales.SalesOrderDetail;

SELECT ProductID, COUNT(ProductId) AS 'Contagem'
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

/*
 Vamos dizer que eu quero saber quantos nomes de cada nome temos cadastrados 
 em nosso banco de dados
 */
SELECT * FROM Person.Person;


SELECT FirstName, COUNT(FirstName) AS 'Quantidade'
FROM Person.Person
GROUP BY FirstName;

-- Meu Teste
SELECT FirstName, COUNT(FirstName) AS 'Quantidade'
FROM Person.Person
WHERE FirstName LIKE 'Isab%'
GROUP BY FirstName;

/*
 Na tabela Production.Product, eu quero saber a m�dia de pre�o para os
 produtos que s�o pratas(silver)
 */
SELECT * FROM Production.Product;

SELECT Color, AVG(ListPrice) AS 'M�dia'
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color;

--DESAFIO 01

/*
 1 - Eu preciso saber quantas pessoas tem o mesmo MiddleName agrupados por 
 MiddleName
 */
SELECT * FROM Person.Person;

SELECT MiddleName, COUNT(MiddleName) AS 'Quantidade'
FROM Person.Person
GROUP BY MiddleName;

/*
 2 - Eu preciso saber em m�dia qual � a quantidade(quantity) que cada produto 
 � vendido na loja
 */
SELECT * FROM Sales.SalesOrderDetail;

SELECT ProductID, AVG(OrderQty) AS 'M�dia'
FROM Sales.SalesOrderDetail
GROUP BY ProductID;

/*
 3 - Eu quero saber quais foram as 10 vendas que no total tiveram os 
 maiores valores de venda(LineTotal) por produto do maior valor para o menor
 */
SELECT * FROM Sales.SalesOrderDetail;

SELECT TOP 10 ProductID, SUM(LineTotal) AS 'Maiores Valores'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC;

/*
 4 - Eu preciso saber quantos produtos e qual � a quantidade m�dia de
 produtos que temos cadastrados nas nossas ordens de servi�o(WorkerOrder),
 agrupados por productID
 */
SELECT * FROM Production.WorkOrder;

SELECT 
	ProductID,
	COUNT(ProductID) AS 'Quantidade de Produtos',
	AVG(OrderQty) AS 'M�dia da Quantidade de Produtos'
FROM Production.WorkOrder
GROUP BY ProductID;






















