-- INNER JOIN + DESAFIOS (INTERMEDIÁRIO)
/*
 Existem 3 tipos gerais de JOINS:
 INNER JOIN, OUTER JOIN E SELF-JOIN
 
 SELECT C.ClienteID, C.Nome, E.Rua, E.Cidade
 FROM Cliente C
 INNER JOIN Endereco E ON E.EnderecoId = C.EnderecoId
 */

-- BusinessEntityId, FirstName, LastName, EmailAdress
SELECT TOP 10 *
FROM Person.Person;

SELECT TOP 10 *
FROM Person.EmailAddress;

SELECT P.BusinessEntityID, P.FirstName, P.LastName, E.EmailAddress 
FROM Person.Person P
INNER JOIN Person.EmailAddress E
ON P.BusinessEntityID = E.BusinessEntityID;

/*
 Vamos dizer que nós queremos os nomes dos produtos, o preço e o nomes
 das subcategorias
 */
SELECT TOP 10 *
FROM Production.Product;

SELECT TOP 10 *
FROM Production.ProductSubcategory;

SELECT PP.Name AS 'Nome do Produto', 
PP.ListPrice AS "Preço do Produto", 
PS.Name AS "Nome da Subcategoria"
FROM Production.Product PP
INNER JOIN Production.ProductSubcategory PS
ON PP.ProductSubcategoryID = PS.ProductSubcategoryID;

SELECT TOP 10 *
FROM Person.BusinessEntityAddress;

SELECT TOP 10 *
FROM Person.Address;

SELECT TOP 10 *
FROM Person.BusinessEntityAddress PBE
INNER JOIN Person.Address PA
ON PBE.AddressID = PA.AddressID;

-- DESAFIO 1
-- BusinessEntityId, Name, PhoneNumberTypeId, PhoneNumber
SELECT TOP 10 *
FROM Person.PersonPhone;

SELECT TOP 10 *
FROM PERSON.PhoneNumberType;

SELECT PP.BusinessEntityID, PNT.Name, PNT.PhoneNumberTypeID, PP.PhoneNumber 
FROM Person.PersonPhone PP 
INNER JOIN Person.PhoneNumberType PNT
ON PP.PhoneNumberTypeID = PNT.PhoneNumberTypeID;

-- DESAFIO 2
-- AdressId, City, StateProvinceId, Nome do Estado
SELECT TOP 10 *
FROM Person.Address

SELECT TOP 10 *
FROM Person.StateProvince

SELECT TOP 10 PA.AddressID, PA.City, PA.StateProvinceID, PSP.Name
FROM Person.Address PA 
INNER JOIN Person.StateProvince PSP
ON PA.StateProvinceID = PSP.StateProvinceID;












































