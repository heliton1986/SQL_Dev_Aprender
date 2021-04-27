-- LIKE

/*
 * Vamos dizer que você quer encontrar uma pessoa no banco de dados que você
 * sabe que o nome dela era ovi... alguma coisa
 */

SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%' -- sabe só o início do nome

SELECT FirstName 
FROM Person.Person
WHERE FirstName LIKE '%to'; -- sabe só o FINAL do nome

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%essa%'; -- não sabe se está NO inicio ou NO FINAL

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro_'; -- traz apenas um caracter após ro

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro__'; -- traz 2 caracteres após ro






