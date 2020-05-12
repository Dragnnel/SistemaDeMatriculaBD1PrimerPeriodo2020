/*
	Historial del estudiante

	Datos Personales: Cuenta, nombre, carrera, centro,
					  indice global, indice periodo

	Datos de Asignatura: Codigo, asignatura, UV, Seccion,
						 Anio, periodo, calificacion, OBS
*/


/*
	CONSULTA PARA OBTENER los datos personales del historial
*/
/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.Carrera

SELECT *
	FROM ProyectoSistemaMatricula.unah.CentroUniversitario

SELECT *
	FROM ProyectoSistemaMatricula.unah.Persona

SELECT *
	FROM ProyectoSistemaMatricula.unah.Estudiante

SELECT *
	FROM ProyectoSistemaMatricula.unah.HistorialAcademico
*/
-----------------------------------------------------------------------------------------------------------
/*
SELECT E.idEstudiante AS Cuenta,
	   CONCAT(P.primerNombre,' ', P.segundoNombre,' ', P.primerApellido,' ', P.segundoApellido) AS Nombre,
	   C.nombreCarrera AS Carrera,
	   CU.centroUniversitario AS Centro,
	   HA.indiceGlobal,
	   HA.indicePeriodo
	FROM ProyectoSistemaMatricula.unah.Persona P
	INNER JOIN ProyectoSistemaMatricula.unah.Estudiante E
	ON E.idpersona = P.idPersona
	INNER JOIN ProyectoSistemaMatricula.unah.Carrera C
	ON C.idCarrera = E.idCarrera
	INNER JOIN ProyectoSistemaMatricula.unah.CentroUniversitario CU
	ON CU.idCentro = E.idCentro
	INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico HA
	ON HA.idEstudiante = E.idEstudiante
	WHERE E.idEstudiante = 1  --Cuenta especifica del estudiante
*/
-----------------------------------------------------------------------------------------------------------
/*
	CONSULTA PARA OBTENER los Datos de Asignatura del historial
	Datos de Asignatura: Codigo, asignatura, UV, Seccion,
						 Anio, periodo, calificacion, OBS
*/
/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.Estudiante

SELECT *
	FROM ProyectoSistemaMatricula.unah.HistorialAcademico

SELECT *
	FROM ProyectoSistemaMatricula.unah.Matricula

SELECT *
	FROM ProyectoSistemaMatricula.unah.SeccionMatricula

SELECT *
	FROM ProyectoSistemaMatricula.unah.Seccion

SELECT *
	FROM ProyectoSistemaMatricula.unah.Periodo

SELECT *
	FROM ProyectoSistemaMatricula.unah.ObservacionNotaFinal
*/
-----------------------------------------------------------------------------------------------------------
/*
DECLARE @idEstudiante INT = 1
DECLARE @idHistorial INT
DECLARE @cantidadMatriculas INT


SET @idHistorial = (SELECT HA.idHistorial
						FROM ProyectoSistemaMatricula.unah.HistorialAcademico HA
						WHERE HA.idEstudiante = @idEstudiante
					)

SET @cantidadMatriculas = (SELECT COUNT(*)
								FROM ProyectoSistemaMatricula.unah.Matricula M
								WHERE M.idEstudiante = @idEstudiante
								  AND M.idHistorial = @idHistorial)


SELECT SM.idAsignatura,
	   A.nombreAsignatura,
	   A.unidadesValorativas,
	   SM.idSeccion,
	   P.anio,
	   S.idPeriodo,
	   SM.notaFinal,
	   SM.idObservacionNota
	FROM ProyectoSistemaMatricula.unah.Matricula M
	INNER JOIN ProyectoSistemaMatricula.unah.SeccionMatricula SM
	ON SM.idMatricula = M.idMatricula
	INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
	ON (S.idSeccion = SM.idSeccion AND S.idAsignatura = SM.idAsignatura)
	INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
	ON A.idAsignatura = S.idAsignatura
	INNER JOIN ProyectoSistemaMatricula.unah.Periodo P
	ON S.idPeriodo = P.idPeriodo
	WHERE M.idEstudiante = @idEstudiante
	  AND M.idHistorial = @idHistorial
	  AND SM.idObservacionNota IN ('APR','NSP','RPB')
*/

---------------------------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 01/05/2020 
-- Description:	Procedimiento almacenado para obtener todos los datos del historial academico
-- =============================================

CREATE PROCEDURE [unah].[spObtenerHistorialAcademico] (
		@idEstudiante INT
	)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @idHistorial INT
		DECLARE @indiceGlobal FLOAT
		DECLARE @indicePeriodo FLOAT

		SET @idHistorial = (SELECT HA.idHistorial
								FROM ProyectoSistemaMatricula.unah.HistorialAcademico HA
								WHERE HA.idEstudiante = @idEstudiante
							)
		
		/*Llamado de las funciones para la obtencion de los respectivos indices*/
		SET @indiceGlobal = [unah].[fnObtenerIndiceGlobal](@idEstudiante,@idHistorial)

		SET @indicePeriodo = [unah].[fnObtenerIndicePeriodo](@idEstudiante,@idHistorial)

		/*Actualizacion de manera dinamica*/
		UPDATE ProyectoSistemaMatricula.unah.HistorialAcademico
		   SET indiceGlobal = @indiceGlobal
		 WHERE idEstudiante = @idEstudiante
		   AND idHistorial = idHistorial

		UPDATE ProyectoSistemaMatricula.unah.HistorialAcademico
		   SET indicePeriodo = @indicePeriodo
		 WHERE idEstudiante = @idEstudiante
		   AND idHistorial = @idHistorial


		/*Aqui se obtienen los datos personales, indice global y de periodo, etc*/
		SELECT E.idEstudiante AS Cuenta,
			   CONCAT(P.primerNombre,' ', P.segundoNombre,' ', P.primerApellido,' ', P.segundoApellido) AS Nombre,
			   C.nombreCarrera AS Carrera,
			   CU.centroUniversitario AS Centro,
			   HA.indiceGlobal AS IndiceGlobal,
			   HA.indicePeriodo As IndicePeriodo
				  FROM ProyectoSistemaMatricula.unah.Persona P
			INNER JOIN ProyectoSistemaMatricula.unah.Estudiante E
					ON E.idpersona = P.idPersona
			INNER JOIN ProyectoSistemaMatricula.unah.Carrera C
					ON C.idCarrera = E.idCarrera
			INNER JOIN ProyectoSistemaMatricula.unah.CentroUniversitario CU
					ON CU.idCentro = E.idCentro
			INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico HA
					ON HA.idEstudiante = E.idEstudiante
				 WHERE E.idEstudiante = @idEstudiante
			
		/*Aqui se obtienen todas las asignaturas, tanto aprobadas, reprobadas y NSP
		  si la esta cursando en el periodo actual que no ha sido calificada entonces no la muestra*/
		SELECT SM.idAsignatura AS CODIGO,
			   A.nombreAsignatura AS ASIGNATURA,
			   A.unidadesValorativas AS UV,
			   SM.idSeccion AS SECCION,
			   P.anio AS AÑO,
			   S.idPeriodo AS PERIODO,
			   SM.notaFinal AS CALIFICACION,
			   SM.idObservacionNota AS OBS
				  FROM ProyectoSistemaMatricula.unah.Matricula M
			INNER JOIN ProyectoSistemaMatricula.unah.SeccionMatricula SM
					ON SM.idMatricula = M.idMatricula
			INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
					ON (S.idSeccion = SM.idSeccion AND S.idAsignatura = SM.idAsignatura)
			INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
					ON A.idAsignatura = S.idAsignatura
			INNER JOIN ProyectoSistemaMatricula.unah.Periodo P
				    ON S.idPeriodo = P.idPeriodo
				 WHERE M.idEstudiante = @idEstudiante
				   AND M.idHistorial = @idHistorial
				   AND SM.idObservacionNota IN ('APR','NSP','RPB','ABD')
	END TRY
	BEGIN CATCH
		PRINT 'Verifique que el numero de cuenta que esta ingresando este correcto'
	END CATCH
END
GO

/*Prueba*//*
EXECUTE [unah].[spObtenerHistorialAcademico] 1

EXECUTE [unah].[spObtenerHistorialAcademico] 2
*/