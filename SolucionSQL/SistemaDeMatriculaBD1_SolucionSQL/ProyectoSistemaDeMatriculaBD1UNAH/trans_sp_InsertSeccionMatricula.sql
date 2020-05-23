-- =============================================
-- Author:		Ruby Gonzales
--				Luis Estrada
--				David Palacios
-- Create date: 03/04/2020 9:40:15
-- Description:	Transaccion para reducir el numero de cupos en una seccion.
--				*Aqui se inserta un registro en la tabla "SeccionMatricula", y al realizarce correctamente
--				 reduce en uno los cupos disponibles en la seccion de la asignatura correspondiente
-- =============================================
CREATE PROCEDURE [unah].[spTransactionInsertSeccionMatricula](
			@idMatricula INT,
			@idSeccion INT,
			@idAsignatura INT,
			@notaFinal DECIMAL(2, 2),
			@idObservacion INT
		)
AS
SET NOCOUNT ON

IF NOT EXISTS(SELECT *
				FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
			   WHERE SM.idMatricula = @idMatricula
				 AND SM.idSeccion = @idSeccion
				 AND SM.idAsignatura = @idAsignatura
			  )
	BEGIN
		BEGIN TRY
			BEGIN TRANSACTION
				INSERT INTO ProyectoSistemaMatricula.unah.SeccionMatricula(idMatricula,
																   idSeccion,
																   idAsignatura,
																   notaFinal,
																   idObservacionNota
																   )
															VALUES(@idMatricula,
																   @idSeccion,
																   @idAsignatura,
																   @notaFinal,
																   @idObservacion
																   )	

			IF @@ROWCOUNT = 1
				BEGIN
					IF (SELECT T1.cuposDisponibles 
							FROM ProyectoSistemaMatricula.unah.Seccion T1
						   WHERE idSeccion = @idSeccion
						     AND idAsignatura = @idAsignatura) > 0
						BEGIN
							UPDATE ProyectoSistemaMatricula.unah.Seccion
								SET cuposDisponibles = cuposDisponibles - 1
							  WHERE idSeccion = @idSeccion
								AND idAsignatura = @idAsignatura
						
							COMMIT TRANSACTION

							SELECT 1 AS RESULTADO
							PRINT 'La matricula se registro CORRECTAMENTE'
						END
				END

		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION

			SELECT 0 AS RESULTADO
			PRINT 'No se pudo registrar la matricula'
		END CATCH
	END
ELSE
	BEGIN
		PRINT 'La Asignatura(Sección) ya está Matriculada'
	END

/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.Estudiante

SELECT *
	FROM ProyectoSistemaMatricula.unah.Asignatura

SELECT *
	FROM ProyectoSistemaMatricula.unah.Seccion

SELECT *
	FROM ProyectoSistemaMatricula.unah.SeccionMatricula

SELECT *
	FROM ProyectoSistemaMatricula.unah.Matricula
*/