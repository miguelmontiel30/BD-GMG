use sistema_gmg;

select nombre_alum,ap_paterno_alum,ap_materno_alum 
from alumnos
inner join relacion_tutor_alum 
ON relacion_tutor_alum.id_alumno = alumnos.id_alumno
where id_tutor = '000001';

select nombre_materia,grado
from materias
inner join profesores
ON materias.id_profesor = profesores.id_profesor
where materias.id_profesor = '000002' order by grado;

select id_alumno
from alumnos
where nombre_alum like 'Juan%';

select *
from alumnos
where nombre_alum like '%J%' order by nombre_alum;

select grupos.id_grupo,grupos.grado,grupos.grupo,profesores.nombre_profe,profesores.ap_paterno_prof,profesores.ap_materno_prof, ciclos.ciclo
		from profesores 
		inner join grupos 
		on profesores.id_profesor = grupos.id_profesor
		inner join ciclos
		on grupos.id_ciclo = grupos.id_ciclo
		where grupos.id_grupo = 000001 and 
        ciclos.id_ciclo = 000001 ;

select ciclo 
from ciclos
inner join grupos
on grupos.id_ciclo = ciclos.id_ciclo
where grupos.id_grupo = 000001;

select nombre_profe 
from profesores where id_tipo = 000002;


delimiter $$

create trigger calificaciones_insert
after insert on usuario for each row 
begin 
	insert into sesiones(id_sesion,movimiento,id_usuario,usuario) values(null,'Se realizo una inserción de datos')	
    
end $$
delimiter ;
    
	