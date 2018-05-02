use sistema_gmg;
							/*PROCEDIMIENTO BUSQUEDA DE USUARIOS*/
                            
DELIMITER $$
CREATE PROCEDURE validacion(user varchar(20), pass varchar(50))
BEGIN
SELECT tipo_usuario FROM login where usuario = user and password = pass;
END $$
	
                    
						/* PROCEDIMIENTO BUSQUEDA */

DELIMITER $$

CREATE PROCEDURE busqueda_ciclo(nombre_ciclo varchar(12))
BEGIN
SELECT * FROM vista_ciclos where Ciclos like  CONCAT('%',nombre_ciclo,'%');

END$$




