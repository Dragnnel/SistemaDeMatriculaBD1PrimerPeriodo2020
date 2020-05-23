 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/05/2020 
-- Description:	Me devuelve la cantidad de clases donde el estudiante  no se presento
-- =============================================

	

 CREATE VIEW [unah].[vw_VistaCantidadClasesNSP] AS(

 SELECT   T5.idEstudiante,
			T6.primerNombre,
			T6.segundoNombre,
			T6.primerApellido,
			T6.segundoApellido,
		   COUNT( T3.descripcion) AS CantidadClasesAPR
   FROM ProyectoSistemaMatricula.unah.SeccionMatricula T1
	INNER JOIN ProyectoSistemaMatricula.unah.ObservacionNotaFinal T3
	ON t1.idObservacionNota =t3.idObservacionNotaFinal
	INNER JOIN ProyectoSistemaMatricula.unah.Matricula T4
	ON T1.idMatricula =T4.idMatricula
	INNER JOIN ProyectoSistemaMatricula.unah.Estudiante T5
	ON T4.idEstudiante = T5.idEstudiante
	INNER JOIN ProyectoSistemaMatricula.unah.Persona T6
	ON T5.idPersona = T6.idPersona
	WHERE T3.descripcion ='NSP'
	GROUP BY T3.descripcion, T5.idEstudiante, T6.primerNombre, T6.segundoNombre,T6.primerApellido, T6.segundoApellido


)

/*
SELECT *
FROM VistaCantidadClasesNSP
*/

