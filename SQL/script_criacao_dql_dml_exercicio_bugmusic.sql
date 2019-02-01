SELECT * FROM GENEROS

SELECT * FROM BANDAS
SELECT * FROM CANTORES

SELECT * FROM ALBUNS

SELECT * FROM MUSICAS

SELECT * FROM BANDAS_CANTORES

INSERT INTO GENEROS
VALUES	('Rock'),('Sertanejo'),('Pop')

INSERT INTO BANDAS
VALUES ('Ultraje a Rigor', 1), ('Fernando Sorocaba',2),('Barão Vermelho',3)

INSERT INTO ALBUNS
VALUES ('Recomeço',1), ('Vendaval',2),('Maior Abandonado',3)

INSERT INTO MUSICAS
VALUES ('Inútil',1)
	  ,('Mim Quer Tocar',1)
	  ,('Vendaval',2)
	  ,('Paga Pau',2)
	  ,('Baby Suporte',3)
	  ,('Sem Vergonha',3);

INSERT INTO CANTORES
VALUES ('Roger Moreira')
	  ,('Mingau')
	  ,('Bacalhau')
	  ,('Marcos Kleine')
	  ,('Fernando Fakri de Assis')
	  ,('Guto Goffi')
	  ,('Maurício Barros')
	  ,('Fernando Magalhões');

INSERT INTO BANDAS_CANTORES
VALUES (1,1)
	  ,(2,1)
	  ,(3,1)
	  ,(4,1)
	  ,(5,2)
	  ,(6,3)
	  ,(7,3)
	  ,(8,3)