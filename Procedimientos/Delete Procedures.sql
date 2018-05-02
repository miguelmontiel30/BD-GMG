use sistema_gmg;

									/* PROCEDIMIENTOS DELETE */
DELIMITER $$ 

CREATE PROCEDURE delete_ciclos(id int)
BEGIN
delete from ciclos where id_ciclo = id;
END$$