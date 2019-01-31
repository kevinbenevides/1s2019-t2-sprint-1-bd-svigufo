--Lista os dados de uma tabela, retorna todas as colunas
SELECT * FROM CATEGORIAS 

--Lista os dados de uma tabelaa indormando quais as colunas
SELECT NOME, ID FROM CATEGORIAS

--Lista os dados de uma tabela filtranto/where pelo id
SELECT * FROM CATEGORIAS WHERE ID = 1

--Lista os dados de uma tabela filtrando/where pelo id
--Asc Crescente
--Desc - Decrescente
SELECT * FROM CATEGORIAS ORDER BY ID DESC

--Retorna as linhas na tabela Categoria que tenham o Id 1 ou 3
--Neste caso não existe uma linha que tenha o Id 1 e o ID 3
SELECT * FROM CATEGORIAS WHERE ID = 1 OR ID = 3

--Retorna as linhas na tabela Categoria que tenha o Id = 4 e o nome = design
SELECT * FROM CATEGORIAS WHERE ID = 3 AND NOME = 'DESIGN'

--Lista todas as linhas que contém E
SELECT * FROM CATEGORIAS WHERE NOME LIKE '%E%'

--Lista todas as categorias que contenham I no inicio
SELECT * FROM CATEGORIAS WHERE NOME LIKE 'I%'

--Lista todas as categorias que contenham A no final
SELECT * FROM CATEGORIAS WHERE NOME LIKE '%A'

--Lista todas as categoria onde o Id seja maior ou igual a 1
-- >, >=, <, <=
SELECT * FROM CATEGORIAS WHERE ID >= 1

--Retorna a quantidade de registros da tabela Categorias
--AS nome_coluna - altera o nome da coluna visualizada
SELECT COUNT(*) AS QUANTIDADE_REGISTROS FROM CATEGORIAS  

-- Retorna a quantidade de registros informado no Top
SELECT TOP 1 * FROM CATEGORIAS

--Retorna os registros que tem o id entre 2 e 5
-- O between trabalha com >= e <=
SELECT * FROM CATEGORIAS WHERE ID BETWEEN 2 AND 5

--Retorna todas as categorias menos o Id = 1
SELECT * FROM CATEGORIAS WHERE NOT ID = 1

--Retorna todas as categorias onde o id seja igual a 1, 3 e 5
SELECT * FROM CATEGORIAS WHERE ID = 1 OR ID = 3 OR ID = 5

SELECT * FROM CATEGORIAS WHERE ID IN(1,3,5) and NOME IN (DESIGN)

--Update - Altera os dados de uma tabela, campo nome onde o Id seja igual a 1
-- SET -define o(s) campo(s) que desejo alterar 'coluna' = 'valor'
--where - define os registros que eu desejo alterar

UPDATE CATEGORIAS SET NOME = 'Desenvolvimento de Sistemas' WHERE ID = 1

--Deleta o registro da tabela
--Where - Define os registros que eu desejo alterar
DELETE FROM CATEGORIAS WHERE ID = 4




/*---------EXERCICIO-------------*/
--1)
SELECT * FROM ALUNOS WHERE NOME = 'Kevin'

--2)
SELECT * FROM ALUNOS WHERE NOME LIKE '%I%'

--3)
SELECT * FROM ALUNOS WHERE NOME LIKE 'K%'

--4)
SELECT * FROM ALUNOS WHERE NOME LIKE 'O%' OR NOME LIKE 'A%'

SELECT * FROM ALUNOS WHERE NOME LIKE '%[o,a]'

--5)
SELECT * FROM ALUNOS WHERE ID BETWEEN 3 AND 5

--6)
SELECT * FROM ALUNOS ORDER BY NOME ASC

--7)
DELETE FROM ALUNOS WHERE ID = 2

--8)
UPDATE ALUNOS SET NOME = 'Jefferson Matsumoto' WHERE ID = 3 


                