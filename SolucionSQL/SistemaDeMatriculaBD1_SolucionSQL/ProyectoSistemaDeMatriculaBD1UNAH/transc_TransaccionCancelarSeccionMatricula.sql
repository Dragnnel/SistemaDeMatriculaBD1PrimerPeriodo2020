SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020 
-- Description:	Procedimiento con una transaccion para eliminar una SeccionMatriculada 
-- =============================================
CREATE PROCEDURE [unah].[trans_sp_CancelarSeccionMatricula](
	@idEstudiante INT,
	@idAsignatura VARCHAR(15),
	@idSeccion VARCHAR(15)
)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRAN
			DECLARE @idHistorial INT;
			DECLARE @idMatricula INT;
			DECLARE @nomAsignatura VARCHAR(100);
			DECLARE @mensajeConfirmacion VARCHAR(160);
		
			SET @idHistorial = (SELECT HA.idHistorial
									 FROM ProyectoSistemaMatricula.unah.HistorialAcademico HA
									WHERE HA.idEstudiante = @idEstudiante
								);

			SET @idMatricula = (SELECT M.idMatricula
										  FROM ProyectoSistemaMatricula.unah.Matricula M
									INNER JOIN ProyectoSistemaMatricula.unah.SeccionMatricula SM
											ON SM.idMatricula = M.idMatricula
										 WHERE M.idEstudiante = @idEstudiante
										   AND M.idHistorial = @idHistorial
										   AND SM.idAsignatura = @idAsignatura
										   AND SM.idSeccion = @idSeccion
								);

			SET @nomAsignatura = (SELECT A.nombreAsignatura
										 FROM ProyectoSistemaMatricula.unah.Asignatura A
										WHERE A.idAsignatura = @idAsignatura 
								  );

			IF EXISTS(
					 SELECT *
							 FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
							 WHERE SM.idMatricula = @idMatricula
							  AND SM.idAsignatura = @idAsignatura
							  AND SM.idSeccion = @idSeccion
					  )
				BEGIN
					DELETE ProyectoSistemaMatricula.unah.SeccionMatricula
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
		
		PRINT 'Ocurrio un Error inesperado, al momento de querer cancelar la seccion matriculada'
	END CATCH

    
END
GO

/*
SELECT * 
	FROM ProyectoSistemaMatricula.unah.HistorialAcademico

SELECT * 
	FROM ProyectoSistemaMatricula.unah.SeccionMatricula

SELECT * 
	FROM ProyectoSistemaMatricula.unah.Matricula
*/