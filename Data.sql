INSERT INTO `alumnos` VALUES (000002,'','Gabriela','Perez','Montiel','45g3g3geg4g4ggegege','1998-08-16'),(000003,'','Jorge','Aguilar','Gómez','JSJA980215HHGSGR07','1998-02-15'),(000004,'','Francisco','Gómez','Monroy','GFNGKGERGGRG8547','1997-07-06'),(000008,'','Juan ','Perez','Montiel','45g3g3geg4g4ggegege','1998-08-16'),(000009,'','Gabriel','Perez','Montiel','45g3g3geg4g4ggegege','1998-08-16'),(000010,'','ESMERALDA','CASTELÁN','TERRAZAS','JFDSHFHFE6T483G','1997-10-22');

INSERT INTO `ciclos` VALUES (000001,'Sep17-Ago18','2017-09-21','2018-08-12'),(000002,'Sep19-Ago20','2019-09-26','2020-08-21'),(000004,'Sep','2021-09-24','2021-08-12');

INSERT INTO `periodo_calif` VALUES (000001,'Enero','2017-01-31','2017-01-01'),(000002,'Febrero','2017-02-28','2017-02-01');

INSERT INTO `tipo_profe` VALUES (000001,'ACADEMIA'),(000002,'INGLÉS'),(000003,'COMPUTACIÓN');	

INSERT INTO `profesores` VALUES (000001,'','PEDRO','GARCIA','HERNANDEZ','VNTRT7345T','1212-12-12','77778575',000002),(000002,'','ULISES','SANCHEZ','RAMIREZ','FRDEV5454654V6','1212-12-12','7757575',000002),(000003,'','SERGIO','MARQUEZ','SOTO','DFGE4T55T','1212-12-12','577575',000003);

INSERT INTO `grupos` VALUES (000002,'2','A',000001),(000004,'3','A',000001),(000005,'4','A',000001),(000006,'1','A',000001),(000007,'5','A',000001);

INSERT INTO `relacion_profesor_grupo` VALUES (000002,000002);	

INSERT INTO `tutor` VALUES (000001,'','Carlitos','Juarez','Perez','Mariano Azuela','Nuevo Tulancingo',154,'43612','75-5-17-03','775-143-09-28','775-154-56-51'),(000002,'','Antonio','Aguilar','Pelaez','Los Pinos','Nueva Morelos',315,'43619','75-9-65-95','771-587-65-65','773-364-85-35');

INSERT INTO `login` VALUES ('admin','admin','Administrador',null,null),('carlos','carlos','Tutor',000001,null),('tutor','tutor','Tutor',000002,null),('profe','profe','Profesor',null,000001);

INSERT INTO `relacion_tutor_alum` VALUES (000001,000002);

INSERT INTO `materias` VALUES (000001,'Computación','4'),(000002,'Computación','1'),(000003,'Computación','2'),(000004,'Inglés','2'),(000005,'Inglés','3'),(000006,'Computación','3'),(000007,'Inglés','4'),(000008,'Inglés','1');