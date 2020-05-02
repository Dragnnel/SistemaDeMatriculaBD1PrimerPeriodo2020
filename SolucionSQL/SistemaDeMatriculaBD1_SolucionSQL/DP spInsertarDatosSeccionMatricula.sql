/*
	Tablas A tomar en cuenta
*/
/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.HistorialAcademico

SELECT *
	FROM ProyectoSistemaMatricula.unah.Estudiante

SELECT *
	FROM ProyectoSistemaMatricula.unah.Periodo

SELECT *
	FROM ProyectoSistemaMatricula.unah.Asignatura

SELECT *
	FROM ProyectoSistemaMatricula.unah.Laboratorio --Esta no existe

SELECT *
	FROM ProyectoSistemaMatricula.unah.PensumAcademico

SELECT *
	FROM ProyectoSistemaMatricula.unah.Requisitos

SELECT *
	FROM ProyectoSistemaMatricula.unah.Carrera


------------------------------------------------------------------
SELECT *
	FROM ProyectoSistemaMatricula.unah.Matricula

SELECT *
	FROM ProyectoSistemaMatricula.unah.Seccion

SELECT *
	FROM ProyectoSistemaMatricula.unah.SeccionMatricula

SELECT *
	FROM ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera

*/

-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [unah].[spInsertarDatosSeccionMatricula](
			@idMatricula INT,
			@idSeccion INT,
			@idAsignatura VARCHAR(15),
			@notaFinal DECIMAL (2,2),
			@idObservacionNota INT
	)
AS
BEGIN TRY
	SET NOCOUNT ON
	DECLARE @horaAsignatura INT
	SET @horaAsignatura = (SELECT S.horaInicial
									  FROM ProyectoSistemaMatricula.unah.Seccion S
									 WHERE S.idSeccion = @idSeccion
									   AND S.idAsignatura = @idAsignatura
							)

	IF NOT EXISTS(SELECT TOP(1) *
						FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
					   WHERE SM.idMatricula = @idMatricula
						 AND SM.idSeccion = @idSeccion
				  )
		BEGIN
			IF NOT EXISTS(SELECT TOP(1) *
								FROM ProyectoSistemaMatricula.unah.SeccionMatricula	SM
								WHERE SM.idMatricula = @idMatricula
								  AND SM.idAsignatura = @idAsignatura
						  )
				BEGIN
					IF @horaAsignatura NOT IN(SELECT S.horaInicial
													  FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
												INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
														ON (	S.idSeccion = SM.idSeccion
															AND S.idAsignatura = SM.idAsignatura)
													 WHERE SM.idMatricula = @idMatricula 
											   )
						BEGIN
							DECLARE @cumpleRequisitos VARCHAR(50)
							SET @cumpleRequisitos = [unah].[fnCumpleRequisitos](@idMatricula,@idAsignatura)

							IF @cumpleRequisitos = 'Faltan Requisitos:   '
								BEGIN
									INSERT INTO ProyectoSistemaMatricula.unah.SeccionMatricula(idMatricula,
																							   idSeccion,
																							   idAsignatura,
																							   notaFinal,
																							   idObservacionNota)
																						VALUES(@idMatricula,
																							   @idSeccion,
																							   @idAsignatura,
																							   @notaFinal,
																							   @idObservacionNota
																								)
									PRINT 'Asignatura Matriculada con exito'
								END
							ELSE
								BEGIN
									PRINT @cumpleRequisitos
								END
						END
					ELSE
						BEGIN
							SELECT 0 AS RESULTADO
							PRINT 'Ya tiene una asignatura matriculada a esa hora'
						END
				END
			ELSE
				BEGIN
					SELECT 0 AS RESULTADO
					PRINT 'Ya existe la asignatura matriculada'
				END
		END
	ELSE
		BEGIN
			SELECT 0 AS RESULTADO
			PRINT 'Ya existe una misma sección matriculada'
		END

END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO