CREATE TABLE TabelaA (
	id int PRIMARY KEY IDENTITY,
	nome VARCHAR(150) NOT NULL
);

INSERT INTO TabelaA (nome) VALUES ('Robo');
INSERT INTO TabelaA (nome) VALUES ('Macaco');
INSERT INTO TabelaA (nome) VALUES ('Samurai');
INSERT INTO TabelaA (nome) VALUES ('Monitor');

CREATE TABLE TabelaB (
	id int PRIMARY KEY IDENTITY,
	nome VARCHAR(150) NOT NULL
);

INSERT INTO TabelaB (nome) VALUES ('Espada');
INSERT INTO TabelaB (nome) VALUES ('Robo');
INSERT INTO TabelaB (nome) VALUES ('Mario');
INSERT INTO TabelaB (nome) VALUES ('Samurai');

SELECT * FROM TabelaA;

SELECT * FROM TabelaB;

-- INNER JOIN
-- Retorna apenas os resultados que possuem nas dua tabelas

SELECT * FROM TabelaA ta 
INNER JOIN TabelaB tb 
ON ta.nome = tb.nome;

-- FULL OUTER JOIN
-- Retorna todos os registros de ambas as tabelas, se não tiver aquele registro
-- na outra tabela, insere o valor NULL

SELECT * FROM TabelaA ta 
FULL OUTER JOIN TabelaB tb 
ON ta.nome = tb.nome;

-- LEFT OUTER JOIN
-- Retorna todos os valores da tabela A e exclui da tabela B

SELECT * FROM TabelaA ta 
LEFT JOIN TabelaB tb 
ON ta.nome = tb.nome 

-- RIGHT OUTER JOIN 
-- Retorna os valores da tabela á direita no caso TabelaB

SELECT * FROM TabelaA ta
RIGHT JOIN TabelaB tb
ON ta.nome = tb.nome;
























