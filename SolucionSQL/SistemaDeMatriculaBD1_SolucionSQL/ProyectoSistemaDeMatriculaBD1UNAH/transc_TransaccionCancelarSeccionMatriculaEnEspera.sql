SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020 
-- Description:	Procedimiento con una transaccion para eliminar una SeccionMatriculadaEnEspera 
-- =============================================
CREATE PROCEDURE [unah].[spTransactionCancelarSeccionMatriculaEnEspera](
	@idMatricula INT,
	@idAsignatura VARCHAR(15),
	@idSeccion VARCHAR(15)
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRAN
			DECLARE @idHistorial VARCHAR(11);
			DECLARE @idEstudiante VARCHAR(11);
			DECLARE @nomAsignatura VARCHAR(100);
			DECLARE @mensajeConfirmacion VARCHAR(160);
		
			SET @idEstudiante = (SELECT M.idEstudiante	
											FROM ProyectoSistemaMatricula.unah.Matricula M
									  INNER JOIN ProyectoSistemaMatricula.unah.Estudiante E
											  ON E.idEstudiante = M.idEstudiante
										   WHERE M.idMatricula = @idMatricula
			
								 )

			SET @idHistorial = (SELECT HA.idHistorial
									 FROM ProyectoSistemaMatricula.unah.HistorialAcademico HA
									WHERE HA.idEstudiante = @idEstudiante
								);
			
			SET @nomAsignatura = (SELECT A.nombreAsignatura
										 FROM ProyectoSistemaMatricula.unah.Asignatura A
										WHERE A.idAsignatura = @idAsignatura 
								  );

			IF EXISTS(
					 SELECT *
							 FROM ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera SME
							 WHERE SME.idMatricula = @idMatricula
							  AND SME.idAsignatura = @idAsignatura
							  AND SME.idSeccion = @idSeccion
					  )
				BEGIN
					DELETE ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera
					 WHERE idMatricula = @idMatricula
					   AND idAsignatura = @idAsignatura
					   AND idSeccion = @idSeccion

					IF @@ROWCOUNT = 1
						BEGIN
							COMMIT TRANSACTION
							
							SET @mensajeConfirmacion = CONCAT('La Asignatura ',@idAsignatura,'-',@nomAsignatura,' fue cancelada con Exito')
							
							PRINT @mensajeConfirmacion
						END
				END
			ELSE
				BEGIN
					ROLLBACK TRANSACTION

					SET @mensajeConfirmacion = CONCAT('La Asignatura ',@idAsignatura,'-',@nomAsignatura,' no pudo ser cancelada')

					PRINT @mensajeConfirmacion
				END


	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		
		PRINT 'Ocurrio un Error inesperado, al momento de querer cancelar la seccion matriculada en lista de espera'
	END CATCH

    
END
GO

/*
	PRUEBA
	
SELECT *
	FROM ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera
*/

--EXECUTE [unah].[spTransactionCancelarSeccionMatriculaEnEspera] 1,'FS100','0700'