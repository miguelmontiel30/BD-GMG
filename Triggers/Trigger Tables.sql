/* Tablas para Triggers de inserción */
create table insercion_ciclos(
	id_insercion int(6) zerofill auto_increment primary key not null,    
    ciclo_insertado varchar(25) not null, 
    usuario varchar(15) null,  
	fecha_de_insercion datetime null);

CREATE TABLE insercion_tutores(
	id_insercion int(6) ZEROFILL AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nombre_tutor VARCHAR(20) NOT NULL,
	apellido_paterno_tut VARCHAR(25) NOT NULL,
	apellido_materno_tut VARCHAR(25) NOT NULL,
    usuario varchar(15) null,  
	fecha_de_insercion datetime null);

CREATE TABLE insercion_grupos(
id_insercion int(6) zerofill auto_increment primary key not null,
grado varchar(2) not null,
grupo varchar(1) not null,
id_ciclo int(6) zerofill not null,
usuario varchar(15) null,  
fecha_de_insercion datetime null);    


/* Tablas para Triggers de actualización */

create table actualizacion_ciclos(
	id_actualizacion int(6) zerofill auto_increment primary key not null,    
	anterior_nombre_ciclo varchar(12) null,
	anterior_fecha_inicio date not null,
	anterior_fecha_termino date not null,
    nuevo_nombre_ciclo varchar(12) null,
	nuevo_fecha_inicio date not null,
	nuevo_fecha_termino date not null,
    usuario varchar(15) not null,
    fecha_actualizacion datetime not null);
    
create table actualizacion_tutor(
	id_actualizacion int(6) zerofill auto_increment primary key NOT NULL,
	anterior_nombre_tutor Varchar(20) NOT NULL,
	anterior_apellido_paterno_tut Varchar(25) NOT NULL,
	anterior_apellido_materno_tut Varchar(25) NOT NULL,
	anterior_calle Varchar(50) NOT NULL,
	anterior_colonia Varchar(25) NOT NULL,
	anterior_no_casa int(4) null,
	anterior_codigo_postal char(7) NULL,
	anterior_tel_casa varchar(20) NULL,
	anterior_tel_celular varchar(20) NULL,
	anterior_tel_emergencia varchar(20) NULL,
	nuevo_nombre_tutor Varchar(20) NOT NULL,
	nuevo_apellido_paterno_tut Varchar(25) NOT NULL,
	nuevo_apellido_materno_tut Varchar(25) NOT NULL,
	nuevo_calle Varchar(50) NOT NULL,
	nuevo_colonia Varchar(25) NOT NULL,
	nuevo_no_casa int(4) null,
	nuevo_codigo_postal char(7) NULL,
	nuevo_tel_casa varchar(20) NULL,
	nuevo_tel_celular varchar(20) NULL,
	nuevo_tel_emergencia varchar(20) NULL,
	usuario varchar(15) not null,
    fecha_actualizacion datetime not null);
    
    
    
    
    
    
    
    
/* Tablas para Triggers de elimición */

CREATE TABLE eliminacion_ciclos(
	id_eliminacion int(6) zerofill auto_increment primary key not null,
    id_ciclo int(6) not null,
    nombre_ciclo varchar(12) null,
	fecha_inicio date not null,
	fecha_termino date not null,
    usuario varchar(15) not null,
    fecha_eliminacion datetime not null);
    
CREATE TABLE eliminacion_tutores(
	id_eliminacion int(6) zerofill auto_increment primary key not null,
    id_tutor int(6) not null,
    nombre_tutor VARCHAR(20) NOT NULL,
	apellido_paterno_tut VARCHAR(25) NOT NULL,
	apellido_materno_tut VARCHAR(25) NOT NULL,
    usuario varchar(15) not null,
    fecha_eliminacion datetime not null);    
    
    
    