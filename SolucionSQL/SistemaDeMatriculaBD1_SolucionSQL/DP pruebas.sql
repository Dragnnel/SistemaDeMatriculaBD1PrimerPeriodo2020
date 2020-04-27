
-------------------------------------------------------------------------------------------------------------------------------------
SELECT SM.idAsignatura
	FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
	INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
	ON M.idMatricula = SM.idMatricula
	WHERE M.idEstudiante = 1
	  AND M.idHistorial = 1010
	  --AND SM.idAsignatura IN (1,2)
	  AND idObservacionNota = 'APR'


DECLARE @requisito1 INT = 2
DECLARE @opc1 VARCHAR(50)

DECLARE @requisito2 INT = 1
DECLARE @opc2 VARCHAR(50)

IF @requisito1 IS NOT NULL
	BEGIN
		IF @requisito1 IN(SELECT SM.idAsignatura
							FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
							INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
							ON M.idMatricula = SM.idMatricula
							WHERE M.idEstudiante = 1
							AND M.idHistorial = 1010
							AND idObservacionNota = 'APR' )
			BEGIN
				SET @opc1 = NULL
				--SELECT 1 AS RESULT
				--print @opc1
			END
		ELSE 
			BEGIN 
				SET @opc1 = (SELECT A.nombreAsignatura
								 FROM ProyectoSistemaMatricula.unah.Asignatura A
								WHERE A.idAsignatura = @requisito1)
				--SELECT 0 AS RESULT
				--print @opc1
			END

	END
ELSE
	BEGIN
		SET @opc1 = NULL
		--print @opc1
	END


IF @requisito2 IS NOT NULL
	BEGIN
		IF @requisito2 IN(SELECT SM.idAsignatura
							FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
							INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
							ON M.idMatricula = SM.idMatricula
							WHERE M.idEstudiante = 1
							AND M.idHistorial = 1010
							AND idObservacionNota = 'APR' )
			BEGIN
				SET @opc2 = NULL
				--SELECT 1 AS RESULT
				--print @opc2
			END
		ELSE 
			BEGIN 
				SET @opc2 = (SELECT A.nombreAsignatura
								 FROM ProyectoSistemaMatricula.unah.Asignatura A
								WHERE A.idAsignatura = @requisito2)
				--SELECT 0 AS RESULT
				--print @opc2
			END

	END
ELSE
	BEGIN
		SET @opc2 = NULL
		--print @opc2
	END

print CONCAT('@opc1',' ','@opc2')

DECLARE @juju VARCHAR(50) = CONCAT(NULL,' ',NULL)

IF @juju = ' '
	PRINT 'Esta Vacio'
ELSE
	PRINT @juju

--------------------------------------------------------------------
/*
	Algo asi tendria que funcionar en el SP de insertar matricula
*/
IF ([unah].[CumpleRequisitos](1,1)) = 'Faltan Requisitos:   '
	PRINT 'Matriculado'
ELSE
	PRINT [unah].[CumpleRequisitos](1,1)


PRINT [unah].[CumpleRequisitos](2,1)

--------------------------------------------------------------------------------
IF NOT EXISTS(
				SELECT *
					FROM ProyectoSistemaMatricula.unah.PensumAcademico PA
				   WHERE PA.idAsignatura = 2
					 AND PA.idPlanEstudio = 5
			 )
	PRINT 'No existe la asignatura en su plan de estudio'
ELSE
	PRINT 'Matriculada con exito' --Aqui entonces seria todo lo demas de la matricula

----------------------------------------------------------------------------------
/*
	Forma de verificar si una clase ya ha sido cursada y aprobada
	de ser asi, no deberia permitir matricular
*/

--Consulta de Historial
DECLARE @Asignatura INT = 1

IF @Asignatura IN (
SELECT SM.idAsignatura
	FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
	INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
	ON M.idMatricula = SM.idMatricula
	WHERE M.idEstudiante = 1
	  AND M.idHistorial = 1010
	  AND SM.idObservacionNota = 'APR'
	  )
	BEGIN
		PRINT 'La asignatura ya fue cursada y aprobada'
	END
ELSE
	BEGIN
		PRINT 'La asignatura no ha sido cursada'
	END

------------------------------------------------------------------------------2 1001 5
DECLARE @idMatricula INT = 1
DECLARE @idSeccion INT = 1100
DECLARE @idAsignatura INT = 3

DECLARE @horaAsignatura INT

SET @horaAsignatura = (SELECT S.horaInicial
								FROM ProyectoSistemaMatricula.unah.Seccion S
							 WHERE S.idSeccion = @idSeccion
							   AND S.idAsignatura = @idAsignatura
						)

PRINT @horaAsignatura

IF @horaAsignatura NOT IN (SELECT S.horaInicial
							  FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
						INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
								ON (	S.idSeccion = SM.idSeccion
									AND S.idAsignatura = SM.idAsignatura)
							 WHERE SM.idMatricula = @idMatricula 
						)
	BEGIN
		PRINT 'Matriculada'
	END
ELSE
	BEGIN
		PRINT 'Ya tiene una asignatura matriculada a esa hora'
	END

-----------------------------------------------------------------
SELECT TOP(1) *
	FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
	WHERE SM.idMatricula = @idMatricula
	AND SM.idSeccion = @idSeccion


SELECT S.horaInicial
		  FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
	INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
			ON (	S.idSeccion = SM.idSeccion
				AND S.idAsignatura = SM.idAsignatura)
		 WHERE SM.idMatricula = @idMatricula 
		   --AND S.idAsignatura = @idAsignatura

------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM ProyectoSistemaMatricula.unah.Estudiante
SELECT * FROM ProyectoSistemaMatricula.unah.Seccion
SELECT * FROM ProyectoSistemaMatricula.unah.SeccionMatricula
SELECT * FROM ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera
/*
	Prueba de insertar una seccion matricula
*/
SELECT * FROM ProyectoSistemaMatricula.unah.SeccionMatricula

EXECUTE [unah].[spInsertarDatosSeccionMatricula] 1,1000,1,NULL,NULL   --Matriculada con Exito pues no tiene requisitos
EXECUTE [unah].[spInsertarDatosSeccionMatricula] 1,1000,2,NULL,NULL	  --No matricula porque (Ya existe una misma sección matriculada)
EXECUTE [unah].[spInsertarDatosSeccionMatricula] 1,1002,1,NULL,NULL   --No matricula porque (Ya existe la asignatura matriculada)
EXECUTE [unah].[spInsertarDatosSeccionMatricula] 1,1001,5,NULL,NULL	  --No matricula porque (Ya tiene una asignatura matriculada a esa hora)
EXECUTE [unah].[spInsertarDatosSeccionMatricula] 1,1100,3,NULL,NULL   --No matricula porque (Faltan Requisitos: Precalculo  )
EXECUTE [unah].[spInsertarDatosSeccionMatricula] 1,1300,5,NULL,NULL   --No matricula porque (Faltan Requisitos: Precalculo  Trigonometria)

EXECUTE [unah].[spInsertarDatosSeccionMatricula] 2,1001,5,NULL,NULL   --No matricula porque (No tiene la asignatura en su Plan de estudio)

/*
USE ProyectoSistemaMatricula
SELECT * FROM sys.triggers
GO
*/