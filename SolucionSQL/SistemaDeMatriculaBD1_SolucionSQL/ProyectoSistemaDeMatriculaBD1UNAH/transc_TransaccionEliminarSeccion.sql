SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO 
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 03/04/2020 9:10:50
-- Description:	Eliminar una seccion por medio de una transaccion 
-- =============================================

CREATE PROCEDURE [unah].[trans_sp_EliminarSeccion](
											@pidAsignatura  VARCHAR(15),
											@pidSeccion VARCHAR(15)
									      )
AS
SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION 
		IF  EXISTS (SELECT * FROM  ProyectoSistemaMatricula.unah.Seccion AS T1
							WHERE T1.idAsignatura = @pidAsignatura AND
								T1.idSeccion = @pidSeccion)
			BEGIN
				 DELETE FROM ProyectoSistemaMatricula.unah.Seccion 
							WHERE idAsignatura = @pidAsignatura AND
								  idSeccion = @pidSeccion
					IF @@ROWCOUNT = 1
						BEGIN
							COMMIT TRANSACTION
							PRINT 'La seccion se elimino correctamente'
							SELECT 1  AS Resultado
						END
			END
		ELSE
			BEGIN
							COMMIT TRANSACTION
							PRINT 'No se puedo elimimnar la seccion. Verifique los datos'
							SELECT 0  AS Resultado
			END
END TRY

BEGIN CATCH
	ROLLBACK TRANSACTION
	PRINT 'Error, no se puedo elimimnar la seccion. Verifique los datos'
	SELECT 0 AS Resultado
END CATCH

/*
SELECT * from ProyectoSistemaMatricula.unah.Asignatura
SELECT * from ProyectoSistemaMatricula.unah.Seccion

EXEC [unah].[SP_CreacionSeccionClasePresencial] 'IS412','0802',0800,0900,004,'101','F1','Clase presencial',48,
												001,008,'2013-01-01','I','2020-01-01',001


EXEC [unah].[trans_sp_EliminarSeccion] 'IS412','0800' 
		
*/