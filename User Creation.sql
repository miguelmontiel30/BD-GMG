/*Usuario Administrador*/

CREATE USER 'SUPER_ADMIN'@'WORD_DOMAIN' IDENTIFIED BY 'rootDomain';
CREATE USER 'Administrador'@'localhost' IDENTIFIED BY 'Administrador123';  
GRANT ALL PRIVILEGES ON sistema_gmg. * TO 'Administrador'@'localhost';
GRANT ALL PRIVILEGES ON sistema_gmg. * TO 'SUPER_ADMIN'@'WORD_DOMAIN';

/*Usuarios Profesores*/

CREATE USER 'Profesor'@'localhost' IDENTIFIED BY 'Profesor123';  
GRANT SELECT,INSERT,UPDATE,DELETE ON sistema_gmg.calificaciones TO 'Profesor'@'localhost';


/*Usuario Tutor*/

CREATE USER 'Tutor'@'localhost' IDENTIFIED BY 'Tutor123';  
GRANT SELECT ON sistema_gmg.calificaciones TO 'Tutor'@'localhost';

SELECT * FROM mysql.user;