-- LEFT OUTER JOIN
-- LEFT JOIN

--Quero descobrir quais pessoas tem um cartão de crédito registrado

SELECT FirstName, CreditCardID
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PCC
ON PP.BusinessEntityID = PCC.BusinessEntityID; -- 19118 linhas

SELECT FirstName, CreditCardID
FROM Person.Person PP 
LEFT JOIN Sales.PersonCreditCard PCC
ON PP.BusinessEntityID = PCC.BusinessEntityID; -- 19972 linhas

SELECT FirstName, CreditCardID
FROM Person.Person PP 
RIGHT JOIN Sales.PersonCreditCard PCC 
ON PP.BusinessEntityID = PCC.BusinessEntityID;

SELECT 19972 - 19118 AS 'Quantidade de pessoas que nao tem cartao registrado'

-- Visualizar os registros que não tem cartão de credito registrado

SELECT PP.BusinessEntityID, FirstName, CreditCardID
FROM Person.Person PP 
LEFT JOIN Sales.PersonCreditCard PCC
ON PP.BusinessEntityID = PCC.BusinessEntityID
WHERE PCC.CreditCardID IS NULL ; 




















