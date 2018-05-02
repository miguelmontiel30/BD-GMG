use sistema_gmg;

								/* PROCEDIMIENTOS INSERT */

DELIMITER $$

CREATE PROCEDURE insert_ciclos(
in Ciclo varchar(15), 
in Fecha_ini date, 
in Fecha_ter date)
BEGIN
INSERT INTO ciclos(ciclo,fecha_inicio,fecha_termino) 
values (Ciclo, Fecha_ini, Fecha_ter);
END$$