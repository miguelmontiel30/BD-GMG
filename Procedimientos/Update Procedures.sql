use sistema_gmg;

											/* PROCEDIMIENTOS UPDATE */
DELIMITER $$

CREATE PROCEDURE update_ciclos(id int, ciclo varchar(12),fecha_ini date, fecha_ter date)
BEGIN
UPDATE ciclos set ciclo = ciclo, fecha_inicio = fecha_ini, fecha_termino = fecha_ter where id_ciclo = id;
END $$