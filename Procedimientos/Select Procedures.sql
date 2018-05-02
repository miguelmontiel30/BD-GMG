use sistema_gmg;

								/* PROCEDIMIENTOS SELECT */

/*Tabla ALUMNOS*/

DELIMITER $$ CREATE PROCEDURE select_alumnos()
BEGIN
SELECT * FROM alumnos;
END$$

DELIMITER $$
CREATE PROCEDURE vista_alumnos()
BEGIN
SELECT *FROM vista_alumnos;
END$$

/*Tabla CICLOS*/

DELIMITER $$
CREATE PROCEDURE select_ciclos()
BEGIN
SELECT * FROM ciclos;
END $$

DELIMITER $$
CREATE PROCEDURE vista_ciclos()
BEGIN
SELECT * FROM vista_ciclos;
END $$











