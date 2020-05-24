-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Consulta que muestra estudiantes que estudian carrera simultanea
-- =============================================

SELECT T3.primerNombre,
       T3.segundoNombre,
	   T3.primerApellido,
	   T3.segundoApellido,
       T1.idEstudiante
FROM ProyectoSistemaMatricula.unah.Estudiante T1
INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico T2
ON t1.idEstudiante = T2.idEstudiante
INNER JOIN ProyectoSistemaMatricula.unah.Persona T3
ON T1.idPersona = T3.idPersona
INNER JOIN ProyectoSistemaMatricula.unah.Carrera T4
ON T1.idCarrera = T4.idCarrera
WHERE T1.poseeCarreraSimultanea = 1
