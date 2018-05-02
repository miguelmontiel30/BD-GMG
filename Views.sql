CREATE OR REPLACE VIEW vista_ciclos
AS SELECT ciclos.id_ciclo AS 'ID',ciclos.ciclo AS 'Ciclos',ciclos.fecha_inicio AS 'Fecha de Inicio',
		  ciclos.fecha_termino AS 'Fecha de Termino'
          FROM ciclos;
           
 create or replace VIEW vista_asignacion 
 AS select profesores.nombre_profe,profesores.ap_paterno_prof,grupos.grado,grupos.grupo,tipo_profe.tipo
 from tipo_profe
 inner join profesores
 on profesores.id_tipo = tipo_profe.id_tipo
 inner join relacion_profesor_grupo
 on relacion_profesor_grupo.id_profesor = profesores.id_profesor
 inner join grupos 
 on grupos.id_grupo = relacion_profesor_grupo.id_grupo;
 
 create or replace VIEW vista_grupos
 AS select grupos.id_grupo,grupos.grado, grupos.grupo, ciclos.ciclo
 from grupos
 inner join ciclos
 on grupos.id_ciclo = ciclos.id_ciclo;
 
 create or replace view profe
 as select profesores.nombre_profe, profesores.ap_paterno_prof,profesores.ap_materno_prof,
 profesores.curp,profesores.fecha_ingreso,profesores.telefono, tipo_profe.tipo
 from profesores
 inner join tipo_profe 
 on tipo_profe.id_tipo = profesores.id_tipo;
 
 
 create or replace view inscripcion
 as select inscripciones.id_inscripcion,alumnos.nombre_alum,alumnos.ap_paterno_alum,alumnos.ap_materno_alum,grupos.grado,grupos.grupo,ciclos.ciclo,inscripciones.fecha
 from ciclos
 inner join grupos 
 on ciclos.id_ciclo = grupos.id_ciclo
 inner join inscripciones
 on inscripciones.id_grupo = grupos.id_grupo
 inner join alumnos
 on inscripciones.id_alumno = alumnos.id_alumno;
 
 
 create or replace view materia
 as select grupos.grado,grupos.grupo,materias.nombre_materia
 from grupos
 inner join materias_grupo
 on grupos.id_grupo = materias_grupo.id_grupo
 inner join materias
 on materias.id_materias = materias_grupo.id_materias;
 
 
 
 
 