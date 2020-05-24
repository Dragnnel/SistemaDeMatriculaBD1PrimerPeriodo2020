-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Consultas que muestra estudiantes que obtuvieron mayor o igual a 1000 en la PAA
-- =============================================

SELECT T3.primerNombre,
	   T3.segundoNombre,
	   T3.primerApellido,
	   T3.segundoApellido
FROM ProyectoSistemaMatricula.unah.Estudiante T1
INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico T2
ON T1.idEstudiante = T2.idEstudiante
INNER JOIN ProyectoSistemaMatricula.unah.persona T3
ON T1.idPersona = T3.idPersona
INNER JOIN ProyectoSistemaMatricula.unah.NotaExamenAptitud T4
ON T4.idNotaAptitud = T1.idNotaAptitud
WHERE T4.notaPaa>= 1000

