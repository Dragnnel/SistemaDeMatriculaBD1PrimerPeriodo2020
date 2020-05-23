
 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/05/2020 
-- Description:		Lista de los Representantes Artisticos y de Deportes en la u
-- =============================================
	
	

 CREATE VIEW [unah].[vwVistaListaRepresentantesArtisticos] AS(

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

)

/*
SELECT *
FROM VistaListaRepresentantesArtisticos

*/