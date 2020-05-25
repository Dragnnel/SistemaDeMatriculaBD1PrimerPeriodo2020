---------------------------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 09/05/2020 
-- Description:	Mediante este procedimiento obtenemos la forma 003 del estudiante
-- =============================================

CREATE PROCEDURE [unah].[spObtenerForma003] (
		@idEstudiante VARCHAR(11)
	)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @idHistorial VARCHAR(11)
		DECLARE @idMaricula INT

		SET @idHistorial = (SELECT HA.idHistorial
								FROM ProyectoSistemaMatricula.unah.HistorialAcademico HA
								WHERE HA.idEstudiante = @idEstudiante
							)

		SET @idMaricula = (SELECT MAX(M.idMatricula)
								 FROM ProyectoSistemaMatricula.unah.Matricula M
								WHERE M.idEstudiante = @idEstudiante
							)


		--Cuenta, nombre, carrera, centro, año

		SELECT E.idEstudiante AS Cuenta,
		       CONCAT(P.primerNombre,' ', P.segundoNombre,' ', P.primerApellido,' ', P.segundoApellido) AS Nombre,
			   C.nombreCarrera AS Carrera,
			   CU.centroUniversitario AS Centro,
			   DATEPART(YEAR, M.fechaInicio) AS Año
			FROM ProyectoSistemaMatricula.unah.Estudiante E
			INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
			ON M.idEstudiante = E.idEstudiante
			INNER JOIN ProyectoSistemaMatricula.unah.Persona P
			ON P.idPersona = E.idPersona
			INNER JOIN ProyectoSistemaMatricula.unah.Carrera C
			ON C.idCarrera = E.idCarrera
			INNER JOIN ProyectoSistemaMatricula.unah.CentroUniversitario CU
			ON CU.idCentro = E.idCentro
			WHERE E.idEstudiante = @idEstudiante
			  AND M.idMatricula = @idMaricula

		--cod, asignatura, seccion, HI, HF, Dias, edificio, Aula, UV, OBS, PERIODO, SEMANA
		SELECT SM.idAsignatura AS Cod,
			   A.nombreAsignatura AS Asignatura,
			   SM.idSeccion AS Sección,
			   S.horaInicial AS HI,
			   S.horaFinal AS HF,
			   D.descripcionDias AS Dias,
			   S.idCodigoEdificio AS Edificio,
			   CONCAT(S.idCodigoAula, ' ', Au.observacion) AS Aula,
			   A.unidadesValorativas AS UV,
			   S.observaciones AS OBS,
			   S.idPeriodo AS Periodo
			FROM ProyectoSistemaMatricula.unah.Matricula M
			INNER JOIN ProyectoSistemaMatricula.unah.SeccionMatricula SM
			ON SM.idMatricula = M.idMatricula
			INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
			ON (	SM.idSeccion = S.idSeccion 
				AND SM.idAsignatura = S.idAsignatura)
			INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
			ON A.idAsignatura = S.idAsignatura
			INNER JOIN ProyectoSistemaMatricula.unah.Aula Au
			ON (    Au.idCodigoAula = S.idCodigoAula
				AND Au.idCodigoEdificio = S.idCodigoEdificio)
			INNER JOIN ProyectoSistemaMatricula.unah.Dias D
			ON D.idDias = S.idDias
			WHERE M.idMatricula = @idMaricula
			  AND M.idEstudiante = @idEstudiante



	END TRY
	BEGIN CATCH
		PRINT 'Verifique que el numero de cuenta de el estudiante este correcto'
	END CATCH

END
Go


/*
	DATOS:
	Cuenta, nombre, carrera, centro, año

	cod, asignatura, seccion, HI, HF, Dias, edificio, Aula, UV, OBS, PERIODO, SEMANA
*/
/*
PRINT DATEPART(YEAR, '2019-01-01')
SELECT *
	FROM ProyectoSistemaMatricula.unah.Asignatura

SELECT *
	FROM ProyectoSistemaMatricula.unah.Seccion

SELECT *
	FROM ProyectoSistemaMatricula.unah.SeccionMatricula

SELECT *
	FROM ProyectoSistemaMatricula.unah.Matricula

SELECT *
	FROM ProyectoSistemaMatricula.unah.Estudiante

SELECT *
	FROM ProyectoSistemaMatricula.unah.Periodo

SELECT * 
	FROM ProyectoSistemaMatricula.unah.TipoPeriodo

SELECT *
	FROM ProyectoSistemaMatricula.unah.Aula

*/

/*
	PRUEBA
	EXECUTE [unah].[spObtenerForma003] 160981426
*/


