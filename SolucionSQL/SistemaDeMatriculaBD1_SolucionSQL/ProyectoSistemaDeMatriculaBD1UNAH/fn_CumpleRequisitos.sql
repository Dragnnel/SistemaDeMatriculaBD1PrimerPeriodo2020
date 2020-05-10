------------------------------------------------------------------------------------------------------
/*
	FUNCION PARA VERIFICAR SI CUMPLE LAS ASIGNATURAS
*/
------------------------------------------------------------------------------------------------------
/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.Matricula  --Obtengo informcion de idHistorial y idEstudiante

SELECT *
	FROM ProyectoSistemaMatricula.unah.HistorialAcademico  --Obtengo informacion del idEstudiante

SELECT *
	FROM ProyectoSistemaMatricula.unah.Estudiante  --Obtengo informacion de las UVDispinibles y idCarrera

SELECT *
	FROM ProyectoSistemaMatricula.unah.Carrera  --consigo informacion idPlanEstudio

SELECT *
	FROM ProyectoSistemaMatricula.unah.Seccion --Obtengo informacion cuposDisponibles, idAsignatura, etc.

SELECT *
	FROM ProyectoSistemaMatricula.unah.Asignatura  --obtengo informacion de unidadesValorativas

SELECT *
	FROM ProyectoSistemaMatricula.unah.Periodo  --fechas,tipos, anio

SELECT *
	FROM ProyectoSistemaMatricula.unah.PlanEstudio  --

SELECT *
	FROM ProyectoSistemaMatricula.unah.PensumAcademico --idAsignatura y idPlanPeriodo

SELECT *
	FROM ProyectoSistemaMatricula.unah.Requisitos  --requisitos

SELECT *
	FROM ProyectoSistemaMatricula.unah.SeccionMatricula
*/

CREATE FUNCTION [unah].[fnCumpleRequisitos](
		@idMatricula INT,
		@idAsignatura VARCHAR(15)
	)
RETURNS VARCHAR(50)
AS
BEGIN
	DECLARE @idHistorial INT
	DECLARE @idEstudiante INT
	DECLARE @idCarrera INT
	DECLARE @idPlaEstudio INT
	DECLARE @idRequisito1 INT
	DECLARE @idRequisito2 INT
	--
	DECLARE @opc1 VARCHAR(20)
	DECLARE @opc2 VARCHAR(20)
	DECLARE @retorno VARCHAR(50)

	SET @idHistorial = (
						 SELECT M.idHistorial
							 FROM ProyectoSistemaMatricula.unah.Matricula M
							WHERE M.idMatricula  = @idMatricula
						)

	SET @idEstudiante = (
						 SELECT HA.idEstudiante
							 FROM ProyectoSistemaMatricula.unah.HistorialAcademico HA
							WHERE HA.idHistorial = @idHistorial
						 )						

	SET @idCarrera = (
					  SELECT E.idCarrera
							  FROM ProyectoSistemaMatricula.unah.Matricula M
						INNER JOIN ProyectoSistemaMatricula.unah.Estudiante E
								ON E.idEstudiante = M.idEstudiante
							 WHERE M.idMatricula = @idMatricula
					  )
	SET @idPlaEstudio = (
						 SELECT C.idPlanEstudio
							 FROM ProyectoSistemaMatricula.unah.Carrera C
							WHERE C.idCarrera = @idCarrera
						 )

	SET @idRequisito1 = (
						 SELECT R.idRequisito1
							 FROM ProyectoSistemaMatricula.unah.Requisitos R
						    WHERE idAsignatura = @idAsignatura
							  AND idPlanEstudio  = @idPlaEstudio
						 )
	SET @idRequisito2 = (
						 SELECT R.idRequisito2
							 FROM ProyectoSistemaMatricula.unah.Requisitos R
							WHERE idAsignatura = @idAsignatura
							  AND idPlanEstudio  = @idPlaEstudio
						 )
	---------------------------------------------------------------------------------
	IF NOT EXISTS(SELECT *
					  FROM ProyectoSistemaMatricula.unah.PensumAcademico PA
				     WHERE PA.idAsignatura = @idAsignatura
					   AND PA.idPlanEstudio = @idPlaEstudio)
		BEGIN
			SET @retorno = 'No tiene la asignatura en su Plan de estudio'
		END
	ELSE
		BEGIN
			IF @idAsignatura IN (SELECT SM.idAsignatura
									   FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
								 INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
										 ON M.idMatricula = SM.idMatricula
									  WHERE M.idEstudiante = @idEstudiante
										AND M.idHistorial = @idHistorial
										AND SM.idObservacionNota = 'APR')
				BEGIN
					SET @retorno = 'La asignatura ya fue cursada y aprobada'
				END
			ELSE
				BEGIN
					IF @idRequisito1 IS NOT NULL
						BEGIN
							IF @idRequisito1 IN(SELECT SM.idAsignatura
													    FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
												  INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
														  ON M.idMatricula = SM.idMatricula
													   WHERE M.idEstudiante =@idEstudiante
													     AND M.idHistorial = @idHistorial
													     AND idObservacionNota = 'APR' )
								BEGIN
									SET @opc1 = NULL
								END
							ELSE 
								BEGIN 
									SET @opc1 = (SELECT A.nombreAsignatura
													FROM ProyectoSistemaMatricula.unah.Asignatura A
												   WHERE A.idAsignatura = @idRequisito1)
								END

						END
					ELSE
						BEGIN
							SET @opc1 = NULL
						END


					IF @idRequisito2 IS NOT NULL
						BEGIN
							IF @idRequisito2 IN(SELECT SM.idAsignatura
														  FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
													INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
															ON M.idMatricula = SM.idMatricula
														 WHERE M.idEstudiante = @idEstudiante
														   AND M.idHistorial = @idHistorial
														   AND idObservacionNota = 'APR' )
								BEGIN
									SET @opc2 = NULL
								END
							ELSE 
								BEGIN 
									SET @opc2 = (SELECT A.nombreAsignatura
													 FROM ProyectoSistemaMatricula.unah.Asignatura A
													WHERE A.idAsignatura = @idRequisito2)
								END

						END
					ELSE
						BEGIN
							SET @opc2 = NULL
						END

					SET @retorno = CONCAT('Faltan Requisitos: ',@opc1, '  ',@opc2)
				END
		END

	RETURN @retorno
END
GO

