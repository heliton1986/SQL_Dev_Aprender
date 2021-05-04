-- UNION
-- O operador UNION combina dois ou mais resultados de um select em um
-- resultado apenas

-- Tira tan=mbem dados duplicados
/*
SELECT coluna1, coluna2
FROM tabela1
UNION
SELECT coluna1, coluna2
FROM tabela2;
*/

-- UNION ALL continua com dados duplicados
/*
SELECT coluna1, coluna2
FROM tabela1
UNION ALL
SELECT coluna1, coluna2
FROM tabela2;
*/

SELECT ProductID, Name, ProductNumber
FROM Production.Product 
WHERE Name LIKE '%Chain%'
UNION 
SELECT ProductID, Name, ProductNumber
FROM Production.Product 
WHERE Name LIKE '%Decal%';

SELECT FirstName, Title, MiddleName
FROM Person.Person 
WHERE Title = 'Mr.'
UNION 
SELECT FirstName, Title, MiddleName 
FROM Person.Person 
WHERE MiddleName = 'A';
















