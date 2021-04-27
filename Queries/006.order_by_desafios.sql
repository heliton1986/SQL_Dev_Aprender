-- ORDER BY - ORDENE FORMA CRESCENTE OU DECRESCENTE
SELECT coluna1, coluna2
FROM tabela
ORDER BY coluna1 ascendente/descendente

SELECT *
FROM Person.Person;

SELECT *
FROM Person.Person
ORDER BY FirstName ASC; -- ORDEM ASCENDENTE

SELECT *
FROM Person.Person
ORDER BY FirstName DESC; -- ORDEM DECRESCENTE

SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName ASC, LastName DESC; 

SELECT FirstName, MiddleName, LastName 
FROM person.person
ORDER BY MiddleName, LastName ASC ;

/*
 * DESAFIO 01
 * OBTER O PRODUCTID DOS 10 PRODUTOS MAIS CAROS CADASTRADOS NO SISTEMA, LISTANDO
 * DO MAIS CARO PARA O MAIS BARATO
 */
SELECT *
FROM Production.Product;

SELECT TOP 10 ProductID, Name, ListPrice 
FROM Production.Product
ORDER BY ListPrice DESC;

/*DESAFIO 02
 * OBTER O NOME E NÚMERO DO PRODUTO DOS PRODUTOS QUE TEM O PRODUCTID ENTRE 1~4
 */
SELECT *
FROM Production.Product;

SELECT TOP 4 name, productNumber
FROM Production.Product
ORDER BY productID ASC;




