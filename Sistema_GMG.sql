drop database sistema_gmg;
create DATABASE sistema_gmg;
use sistema_gmg;

create table ciclos(
id_ciclo int(6) zerofill auto_increment primary key not null,
ciclo varchar(12) null,
fecha_inicio date not null,
fecha_termino date not null);

create table tutor(
id_tutor int(6) zerofill auto_increment primary key NOT NULL,
fotografía mediumblob null,
nombre_tutor Varchar(20) NOT NULL,
apellido_paterno_tut Varchar(25) NOT NULL,
apellido_materno_tut Varchar(25) NOT NULL,
calle Varchar(50) NOT NULL,
colonia Varchar(25) NOT NULL,
no_casa int(4) null,
codigo_postal char(7) NULL,
tel_casa varchar(20) NULL,
tel_celular varchar(20) NULL,
tel_emergencia varchar(20) NULL);

create table tipo_profe(
id_tipo int(6) zerofill auto_increment primary key not null,
tipo varchar(20) null
);

create table profesores(
	id_profesor int(6) zerofill auto_increment primary key not null,
    fotografía mediumblob null,
    nombre_profe varchar(20),    
    ap_paterno_prof varchar(25) not null,
    ap_materno_prof varchar(25) not null,
    curp varchar(25) not null,
    fecha_ingreso date null,
    telefono varchar(20) null,
    id_tipo int(6) zerofill null,
    foreign key (id_tipo) references tipo_profe(id_tipo));

create table grupos(
id_grupo int(6) zerofill auto_increment primary key not null,
grado varchar(2) not null,
grupo varchar(1) not null,
id_ciclo int(6) zerofill not null,
foreign key (id_ciclo) references ciclos(id_ciclo));

create table alumnos(
	id_alumno int(6) zerofill auto_increment primary key not null,
    fotografía mediumblob null,
    nombre_alum varchar(20) not null, 
    ap_paterno_alum varchar(25)not null,
    ap_materno_alum varchar(25)not null,
    curp varchar(25) not null,
    f_nacimiento date not null
    );

create table inscripciones(
id_inscripcion int(6) zerofill auto_increment primary key not null,
id_alumno int(6) zerofill  not null,
id_grupo int(6) zerofill  not null,
fecha date not null,
foreign key (id_alumno) references alumnos(id_alumno),
foreign key (id_grupo) references grupos(id_grupo));
        
create table materias(
id_materias  int(6) zerofill auto_increment primary key not null,
nombre_materia varchar(22) not null,
grado varchar(2) not null);

create table periodo_calif(
id_periodo  int(6) zerofill auto_increment primary key not null,
nombre_periodo varchar(15) null,
fecha_inicio date not null,
fecha_termino date not null);

create table materias_grupo(	
	id_materias int(6) zerofill not null,
    id_grupo int(6) zerofill not null,
    primary key (id_materias, id_grupo),
    foreign key (id_materias) references materias(id_materias),
    foreign key (id_grupo) references grupos(id_grupo));

create table calificaciones_globales(
id_periodo  int(6) zerofill  NOT NULL,
id_alumno  int(6) zerofill NOT NULL,
id_grupo int(6) zerofill NOT NULL,
id_materias  int(6) zerofill NOT NULL,
calificacion float(2,1) NOT NULL,
primary key(id_materias,id_alumno,id_periodo),
foreign key (id_materias) references materias_grupo(id_materias),
foreign key (id_grupo) references materias_grupo(id_materias),
foreign key (id_alumno) references alumnos(id_alumno),
foreign key (id_periodo) references periodo_calif(id_periodo));


create table historial_alumno_grupo(
	id_alumno int(6) zerofill  not null,
    id_grupo int(6) zerofill  not null,
    primary key (id_alumno, id_grupo),
    foreign key (id_grupo) references grupos(id_grupo),
    foreign key (id_alumno) references alumnos(id_alumno));

create table relacion_profesor_grupo(
	id_profesor int(6) zerofill  not null,
    id_grupo int(6) zerofill  not null,
    primary key (id_profesor, id_grupo),
    foreign key (id_grupo) references grupos(id_grupo),
    foreign key (id_profesor) references profesores(id_profesor));
	
create table relacion_tutor_alum(
    id_tutor int(6) zerofill not null,
    id_alumno int(6) zerofill not null,
    primary key (id_tutor, id_alumno),
    foreign key (id_tutor) references tutor(id_tutor),
    foreign key (id_alumno) references alumnos(id_alumno)
	);    
    
create table login(
	usuario varchar (20) primary key not null,    
    password varchar(50) not null,
    tipo_usuario varchar(20) not null,
    id_tutor int(6) zerofill null,
    id_profesor int(6) zerofill null,
    foreign key (id_tutor) references tutor(id_tutor),
    foreign key (id_profesor) references profesores(id_profesor));  
    

    
    