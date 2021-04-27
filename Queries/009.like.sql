-- LIKE

/*
 * Vamos dizer que voc� quer encontrar uma pessoa no banco de dados que voc�
 * sabe que o nome dela era ovi... alguma coisa
 */

SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%' -- sabe s� o in�cio do nome

SELECT FirstName 
FROM Person.Person
WHERE FirstName LIKE '%to'; -- sabe s� o FINAL do nome

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%essa%'; -- n�o sabe se est� NO inicio ou NO FINAL

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro_'; -- traz apenas um caracter ap�s ro

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro__'; -- traz 2 caracteres ap�s ro






