
 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/04/2020 
-- Description:	Vista que me devuelve los nombres,
-- num cuenta de los estudiantes que tienen el indice global bajo  y son suspendidos por tenerlo menor que 50
-- =============================================


 CREATE VIEW VistaEstudiantesconriesgosancion AS(

 SELECT T3.primerNombre,
       T3.primerApellido,
       T3.segundoNombre,
	   T3.segundoApellido,
       T1.idEstudiante,
	   T2.indiceGlobal
FROM ProyectoSistemaMatricula.unah.Estudiante T1
INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico T2
ON t1.idEstudiante = T2.idEstudiante
INNER JOIN ProyectoSistemaMatricula.unah.Persona T3
ON T1.idPersona = T3.idPersona
WHERE T2.indiceGlobal <= 50

)

SELECT *
FROM VistaEstudiantesconriesgosancion

