Create database teste;
Use teste;

CREATE TABLE cad (
  CODFUN  INT NOT NULL PRIMARY KEY,
  NOME    VARCHAR(40) NOT NULL,
  DEPTO   CHAR( 2) NOT NULL,
  FUNCAO  CHAR(20),
  FILHOS  INT,
  SALARIO DECIMAL(10, 2));

INSERT INTO cad VALUES (15,'Marcos','2', 'analista', 2, 2184.33);
INSERT INTO cad VALUES (16,'andre', '2', null, 3, 2184.33);
INSERT INTO cad VALUES (108, 'ROBERTO CARLOS', '2','ANALISTA',0,2000.00);
INSERT INTO cad VALUES (109,'CARLOS AMARAL','1','DBA',1,15000.00);
INSERT INTO cad VALUES (110,'CARLOS GARDEL','1','PROGRAMADOR',0,1000.00);
INSERT INTO cad VALUES (111,'AMAURI LOPES','2','DBA',2,2000.00);
INSERT INTO cad VALUES (112,'MARCIO GARCIA','1','DBA',0,2500.00);


select * from cad;

update cad
set salario = 3000;
SELECT * from cad;
update cad
set filhos = 3 where codfun=15;
SELECT * FROM cad;
update cad
set salario = 4000.00
where nome = 'Carlos gardel';
select * FROM cad;

update cad
set nome = 'Marcos Alves'
where codfun = 15;
select * from cad;

update cad
set depto = 4
where codfun>=15 or codfun<=113;
SELECT * FROM cad;

update cad
set depto = 6
where codfun=15 or codfun=113;
SELECT * FROM cad;

update cad
set salario = 5000.00
where depto>=2 and depto<=4;
SELECT * FROM cad;

update cad
set salario = 6000.00
where depto=2 or depto=5;
SELECT * FROM cad;

update cad
set depto = 2, salario=4000.00
where codfun=109;
SELECT * FROM cad;

delete from cad
where cadfun >=110 and codfun<=112;
SELECT * FROM cad;