-- CATEGORIA - ID,NOME
--Insere uma categoria infromando a coluna
INSERT INTO CATEGORIAS(NOME)
VALUES('Desenvolvimento');

--Insere uma categoria pela ordem das colunas na tabela
INSERT INTO CATEGORIAS
VALUES('Inform�tica');

--Insere varios valores atr�ves de um unico Insert
INSERT INTO CATEGORIAS
VALUES('Design'),('Marketing');

INSERT INTO CATEGORIAS
VALUES('Marketing')


/*------EXERCICIOS---------*/

INSERT INTO ALUNOS
VALUES('Kevin'), ('Carlos'), ('Jefferson'), ('Daniel')

INSERT INTO PROFESSORES
VALUES('Fernando'), ('Helena'), ('Possarle'), ('Raquel')

INSERT INTO CATEGORIAS
VALUES('Gest�o')

INSERT INTO CURSOS
VALUES('SQL','SQL B�sico - Parte 1',1,1);

INSERT INTO CURSOS(NOME,TITULO,ID_CATEGORIA,ID_PROFESSORES)
VALUES('SQL','SQL B�sico - Parte 2', 1,1)
	 ,('JAVA','JAVA B�sico - Parte 2', 1, 2)
	 ,('REACT','React Native - Parte 1', 1, 2)
	 ,('GEST�O','Gest�o de Pessoas', 6, 3);

SELECT NOME, TITULO FROM CURSOS

SELECT COUNT(NOME) FROM CURSOS 

SELECT COUNT(NOME), NOME FROM CURSOS GROUP BY NOME

--RETORNA O NOME E A QUANTIDADE DE CURSOS AGRUPANDO PELO NOME

SELECT COUNT(NOME) AS QUANTIDADE_CURSOS, NOME FROM CURSOS GROUP BY NOME

--Retorna todos os cursos e seus respectivos professores atrav�s do relacionamento
SELECT * FROM 
CURSOS,PROFESSORES 
WHERE 
CURSOS.ID_PROFESSORES = PROFESSORES.ID

----------------------------------------------------------------------------------

--Joins
--Retorna todos os cursos e seus respectivos professores atrav�s do relacionamento
--usando JOIN, recomendado
SELECT * FROM 
CURSOS INNER JOIN PROFESSORES 
ON 
CURSOS.ID_PROFESSORES = PROFESSORES.ID

--Retorna todos os cursos e seus respectivos professores atrav�s do relacionamento
-- usando JOIN e abravia��o/alias das tabelas, recomendado
-- C = Cursos
-- P = Professores
SELECT C.TITULO, P.NOME FROM
CURSOS C INNER JOIN PROFESSORES P
ON
C.ID_PROFESSORES = P.ID
AND P.NOME LIKE '%O%' -- faz um filtro na query pelo nome

