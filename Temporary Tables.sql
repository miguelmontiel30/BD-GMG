/*Tabla temporal de ciclos*/
CREATE TEMPORARY TABLE ai_ciclos(
ciclo varchar(12),
fecha_inicio date,
fecha_termino date);

CREATE TEMPORARY TABLE bi_ciclos(
ciclo varchar(12),
fecha_insercion date,
fecha_consulta date);

truncate table ai_ciclos;
LOAD DATA local INFILE '/home/Mike/ai_ciclos' INTO TABLE ciclos;
select * from ciclos;

truncate table ai_alumnos;
LOAD DATA local INFILE '/home/Mike/alumnos' INTO TABLE alumnos;
select * from alumnos;

/*Tablas LIKE*/
CREATE TABLE Respaldo_Tutores LIKE tutor;
CREATE TABLE Respaldo_Alumnos Like alumnos;

/*Tabla Select*/
DROP TABLE IF EXISTS Respaldo_Tutores;
CREATE TABLE Respaldo_Tutores AS SELECT *FROM tutor;

DROP TABLE IF EXISTS Respaldo_Alumnos;
CREATE TABLE Respaldo_Tutores AS SELECT *FROM alumnos;

/*Tabla con Generated Columns*/
DROP TABLE IF EXISTS Promedios;
CREATE TABLE Promedios (
	mat_1 double,
    mat_2 double,
    mat_3 double,
    mat_4 double,
    mat_5 double,
    mat_6 double,
    mat_7 double,
    mat_8 double,
    promedio double AS (ROUND((mat_1 + mat_2 + mat_3 + mat_4 + mat_5 + mat_6 + mat_7 + mat_8)/8,1)));

INSERT INTO Promedios (mat_1, mat_2, mat_3, mat_4, mat_5, mat_6, mat_7, mat_8) VALUES  (9,8.7,9.2,10,8.9,10,9.87,8.9);    
    