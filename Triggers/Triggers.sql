/*Triggers de inserción*/

CREATE TRIGGER ciclos_ai 
AFTER INSERT ON ciclos
FOR EACH ROW 
INSERT INTO insercion_ciclos(
id_insercion, 
ciclo_insertado, 
usuario,
fecha_de_insercion) VALUES 
('', NEW.ciclo,SUBSTRING_INDEX(USER(),"@",1),NOW());


CREATE TRIGGER tutores_ai 
AFTER INSERT ON tutor
FOR EACH ROW 
INSERT INTO insercion_tutores(
	id_insercion,
    nombre_tutor,
	apellido_paterno_tut,
	apellido_materno_tut,
    usuario,  
	fecha_de_insercion) VALUES 
('', NEW.nombre_tutor,NEW.apellido_paterno_tut, NEW.apellido_materno_tut,SUBSTRING_INDEX(USER(),"@",1),NOW());



/*Triggers de actualización*/
	
CREATE TRIGGER ciclos_bu
BEFORE UPDATE ON ciclos
FOR EACH ROW
INSERT INTO actualizacion_ciclos(
	id_actualizacion,    
	anterior_nombre_ciclo,
	anterior_fecha_inicio,
	anterior_fecha_termino,
    nuevo_nombre_ciclo,
	nuevo_fecha_inicio,
	nuevo_fecha_termino,
    usuario,
    fecha_actualizacion) VALUES
('', OLD.ciclo, OLD.fecha_inicio, OLD.fecha_termino, 
	 NEW.ciclo, NEW.fecha_inicio, NEW.fecha_termino,
     SUBSTRING_INDEX(USER(),"@",1),NOW());

CREATE TRIGGER tutor_bu
BEFORE UPDATE ON tutor
FOR EACH ROW
INSERT INTO actualizacion_tutor(
	id_actualizacion,
	anterior_nombre_tutor,
	anterior_apellido_paterno_tut,
	anterior_apellido_materno_tut,
	anterior_calle,
	anterior_colonia,
	anterior_no_casa,
	anterior_codigo_postal,
	anterior_tel_casa,
	anterior_tel_celular,
	anterior_tel_emergencia,
	nuevo_nombre_tutor,
	nuevo_apellido_paterno_tut,
	nuevo_apellido_materno_tut,
	nuevo_calle,
	nuevo_colonia,
	nuevo_no_casa,
	nuevo_codigo_postal,
	nuevo_tel_casa,
	nuevo_tel_celular,
	nuevo_tel_emergencia,
	usuario,
    fecha_actualizacion) VALUES
('', OLD.nombre_tutor, OLD.apellido_paterno_tut, OLD.apellido_materno_tut, OLD.calle, OLD.colonia,
	 OLD.no_casa, OLD.codigo_postal, OLD.tel_casa, OLD.tel_celular, OLD.tel_emergencia,
     NEW.nombre_tutor, NEW.apellido_paterno_tut, NEW.apellido_materno_tut, NEW.calle, NEW.colonia,
	 NEW.no_casa, NEW.codigo_postal, NEW.tel_casa, NEW.tel_celular, NEW.tel_emergencia,
     SUBSTRING_INDEX(USER(),"@",1),NOW());     
     
/*Triggers de eliminación*/

CREATE TRIGGER ciclos_ad
AFTER DELETE ON ciclos
FOR EACH ROW
INSERT INTO eliminacion_ciclos(
	id_eliminacion,
    id_ciclo,
    nombre_ciclo,
	fecha_inicio,
	fecha_termino,
    usuario,
    fecha_eliminacion) VALUES
('',OLD.id_ciclo, OLD.ciclo, OLD.fecha_inicio, OLD.fecha_termino,
	 SUBSTRING_INDEX(USER(),"@",1),NOW());
     
CREATE TRIGGER tutores_ad
AFTER DELETE ON tutor
FOR EACH ROW
INSERT INTO eliminacion_tutores(
	id_eliminacion,
    id_tutor,
    nombre_tutor,
	apellido_paterno_tut,
	apellido_materno_tut,
    usuario,
    fecha_eliminacion) VALUES
('',OLD.id_tutor, OLD.nombre_tutor, OLD.apellido_paterno_tut, OLD.apellido_materno_tut,
	 SUBSTRING_INDEX(USER(),"@",1),NOW());     
     
