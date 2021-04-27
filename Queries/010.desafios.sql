-- DESAFIOS

-- 1 - Quantos produtos temos cadastrados no sistema que custam mais que 1500 dolares? 
SELECT * 
FROM Production.Product;

SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500; -- 39 produtos

-- 2 - Quantas pessoas temos com o sobrenome que inicia com a letra P?
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'; -- 1187 pessoas

-- 3 - Em quantas cidades únicas estão cadastrados nossos clientes
SELECT *
FROM Person.Address;

SELECT COUNT(DISTINCT city)
FROM Person.Address; -- 575 cidades

-- 4 - Quais são as cidades únicas que temos cadastrados em nosso sistema?
SELECT DISTINCT city
FROM Person.Address; -- 575 cidades

-- 5 - Quantos produtos vermelhos tem preço entre 500 a 1000 dolares?
SELECT *
FROM Production.Product;

SELECT COUNT(Color)
FROM Production.Product
WHERE Color = 'red' 
AND ListPrice BETWEEN 500 AND 1000; -- 11 produtos vermelhos

-- 6 - Quantos produtos cadastrados tem a palavra 'road' no nome deles?
SELECT *
FROM Production.Product;

SELECT COUNT(Name)
FROM Production.Product
WHERE Name LIKE '%road%'; -- 103 produtos









