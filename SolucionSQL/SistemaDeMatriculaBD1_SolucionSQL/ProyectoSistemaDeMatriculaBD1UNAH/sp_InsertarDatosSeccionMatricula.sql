SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020 
-- Description:	Insertar un registro en la tabla SeccionMatricula
-- =============================================

CREATE PROCEDURE [unah].[spInsertarDatosSeccionMatricula](
			@idMatricula INT,
			@idAsignatura VARCHAR(15),
			@idSeccion VARCHAR(15),
			@notaFinal FLOAT,
			@idObservacionNota CHAR(3)
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
	--Filtrado de la asignatura en la tabla de SeccionMatricula
	IF [unah].[fnExisteSeccionMatriculada](@idMatricula,@idSeccion) = 0
		BEGIN
			IF [unah].[fnExisteAsignaturaMatriculada](@idMatricula, @idAsignatura) = 0
				BEGIN
					IF [unah].[fnChoqueDeHoraMatriculada](@horaAsignatura, @idMatricula) = 0
						BEGIN
							--Filtrado de la asignatura en la tabla de SeccionMatriculaEnEspera
							IF [unah].[fnExisteSeccionMatriculadaEnEspera](@idMatricula, @idSeccion) = 0
								BEGIN
									IF [unah].[fnExisteAsignaturaMatriculadaEnEspera](@idMatricula, @idAsignatura) = 0
										BEGIN
											IF [unah].[fnChoqueDeHoraMatriculadaEnEspera](@horaAsignatura, @idMatricula) = 0
												BEGIN
													DECLARE @cumpleRequisitos VARCHAR(280)
													SET @cumpleRequisitos = [unah].[fnCumpleRequisitos](@idMatricula,@idAsignatura)

													IF @cumpleRequisitos = 'Faltan Requisitos:     '
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
													PRINT 'Ya tiene una asignatura matriculada a esa hora en lista de espera'
												END
										END
									ELSE
										BEGIN
											SELECT 0 AS RESULTADO
											PRINT 'Ya existe la asignatura matriculada en lista de espera'
										END
								END
							ELSE
								BEGIN
									SELECT 0 AS RESULTADO
									PRINT 'Ya existe una misma sección matriculada en lista de espera'
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

										