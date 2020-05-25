-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Consulta que muestra los estudiantes que representan de manera artistica
-- o en deportes de la UNAH
-- =============================================

 SELECT T1.idEstudiante,
        T3.nombreCarrera,
		T2.primerNombre,
		T2.segundoNombre,
		T2.primerApellido,
		T2.segundoApellido
 FROM ProyectoSistemaMatricula.unah.Estudiante T1
 INNER JOIN ProyectoSistemaMatricula.unah.Persona T2
 ON T1.idPersona = T2.idPersona
 INNER JOIN ProyectoSistemaMatricula.unah.Carrera T3
 ON T1.idCarrera = T3.idCarrera 
 WHERE T1.esRepresentanteArteoDeporte = 1

