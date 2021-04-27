-- BETWEEN

SELECT *
FROM Person.Person;

/*
 * O BETWEEN É USADO PARA ENCONTRAR VALOR ENTRE UM VALOR MÍNIMO E VALOR MÁXIMO
 * 
 * valor BETWEEN mínimo AND máximo;
 * 
 * é a mesma coisa que dizer:
 * valor >= minimo AND valor <= maximo;
 */
SELECT *
FROM Production.Product;

SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500; -- PREÇO ENTRE 1000 E 1500

SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500; -- QUE NÃO ESTÁ ENTRE 1000 E 1500

SELECT *
FROM HumanResources.Employee;

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009-01-01' AND '2010-12-30'
ORDER BY HireDate ASC;









