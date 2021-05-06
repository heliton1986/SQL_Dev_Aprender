-- MANIPULAÇÃO DE STRINGS (AVANÇADO)
SELECT * 
FROM person.Person;

-- concatenação
SELECT CONCAT(FirstName, ' ', LastName)
FROM Person.Person;

-- caixa alta
SELECT UPPER(FirstName)  
FROM Person.Person;

-- caixa baixa
SELECT UPPER(FirstName), LOWER(LastName)   
FROM Person.Person;

-- tamanho
SELECT FirstName, LEN(FirstName) AS "Tamanho"
FROM Person.Person;

-- com apenas 3 letras
SELECT FirstName, SUBSTRING(FirstName, 1,3) 
FROM Person.Person;

--replace
SELECT *
FROM Production.Product;

SELECT ProductNumber, REPLACE(ProductNumber, '-', '#') 
FROM Production.Product;







