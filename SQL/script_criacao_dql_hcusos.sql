SELECT * FROM CATEGORIAS

SELECT * FROM PROFESSORES

SELECT * FROM CURSOS

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


--Retorna todos os cursos e professores mesmo o professor n�o tendo nenhum curso vinculado a ele
SELECT C.TITULO, P.NOME FROM
CURSOS C RIGHT JOIN PROFESSORES P
ON
C.ID_PROFESSORES = P.ID


SELECT C.TITULO, P.NOME FROM
CURSOS C LEFT JOIN PROFESSORES P
ON
C.ID_PROFESSORES = P.ID


------EXERC�CIOS---------------------------
--1)
SELECT * FROM
CURSOS CS JOIN CATEGORIAS CG
ON
CS.ID_CATEGORIA = CG.ID

--2)
SELECT CS.TITULO, CG.NOME AS 'NOME DA CATEGORIA' FROM
CURSOS CS LEFT JOIN CATEGORIAS CG
ON
CS.ID_CATEGORIA = CG.ID

--3)
SELECT CS.TITULO, CG.NOME AS 'NOME DA CATEGORIA' FROM
CURSOS CS RIGHT JOIN CATEGORIAS CG
ON
CS.ID_CATEGORIA = CG.ID

--4)
SELECT * FROM
CATEGORIAS CG  JOIN CURSOS CS
ON
CG.ID = CS.ID_CATEGORIA

--5)
SELECT CG.NOME AS 'NOME DA CATEGORIA', CS.TITULO FROM
CATEGORIAS CG LEFT JOIN CURSOS CS
ON
CG.ID = CS.ID_CATEGORIA

--6)
SELECT CG.NOME AS 'NOME DA CATEGORIA', CS.TITULO FROM
CATEGORIAS CG RIGHT JOIN CURSOS CS
ON
CG.ID = CS.ID_CATEGORIA



--7)
SELECT * FROM
CURSOS_ALUNOS CA JOIN ALUNOS A
ON
CA.ID_ALUNO = A.ID
JOIN CURSOS CS ON CA.ID_CURSO = CS.ID

