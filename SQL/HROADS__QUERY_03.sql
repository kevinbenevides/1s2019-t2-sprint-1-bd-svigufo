SELECT * FROM TIPO_HABILIDADES

SELECT * FROM CLASSES

SELECT * FROM HABILIDADES

SELECT * FROM CLASSES_HABILIDADES

SELECT * FROM PERSONAGENS

--------------------------------------------------

--4)
UPDATE PERSONAGENS SET NOME = 'Fer7' WHERE ID = 3

--5)
UPDATE CLASSES SET NOME = 'Necromancer' WHERE ID = 5

--6)
SELECT * FROM PERSONAGENS

--7)
SELECT * FROM CLASSES

--8)
SELECT NOME FROM CLASSES

--9)
SELECT * FROM HABILIDADES

--10)
SELECT COUNT(*) FROM HABILIDADES

--11)
SELECT ID FROM HABILIDADES ORDER BY ID ASC

--12)
SELECT * FROM TIPO_HABILIDADES

--13)
SELECT * FROM
HABILIDADES HB INNER JOIN TIPO_HABILIDADES THB
ON
HB.ID_TIPO_HABILIDADES = THB.ID

--14)
SELECT * FROM
PERSONAGENS PG JOIN CLASSES CLS
ON
PG.ID_CLASSE = CLS.ID

--15)
SELECT * FROM
CLASSES CLS LEFT JOIN PERSONAGENS PG
ON 
CLS.ID = PG.ID_CLASSE

--16)
SELECT * FROM
CLASSES CLS JOIN CLASSES_HABILIDADES CLSHB
ON
CLS.ID = CLSHB.ID_CLASSES
JOIN HABILIDADES HB
ON
HB.ID = CLSHB.ID_HABILIDADES

--17)
SELECT * FROM
HABILIDADES HB JOIN CLASSES_HABILIDADES CLSHB
ON
HB.ID = CLSHB.ID_HABILIDADES
JOIN CLASSES CLS
ON
CLS.ID = CLSHB.ID_CLASSES

--18)
SELECT * FROM
HABILIDADES HB RIGHT JOIN CLASSES_HABILIDADES CLSHB
ON
HB.ID = CLSHB.ID_HABILIDADES
RIGHT JOIN CLASSES CLS
ON
CLSHB.ID_CLASSES = CLS.ID
