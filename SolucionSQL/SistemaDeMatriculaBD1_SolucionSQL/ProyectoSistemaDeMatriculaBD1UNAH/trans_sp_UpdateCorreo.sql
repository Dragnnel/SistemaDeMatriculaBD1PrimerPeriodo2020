-- =============================================
-- Author:		Ruby Gonzales
--				Luis Estrada
--				David Palacios
-- Create date: 03/04/2020 10:20:31
-- Description:	 Transaccion con la que se actualizara el correo de una determinada persona
-- =============================================
CREATE PROCEDURE [unah].[spTransactionUpdateCorreo](
		@idPersona VARCHAR(15),
		@idCorreo INT,
		@TipoCorreo INT, -- 0, 1; 0 = personal, 1 = Institucional
		@correo VARCHAR(45)
	)
AS
SET NOCOUNT ON

IF EXISTS(
			Select *
				      FROM ProyectoSistemaMatricula.unah.Persona T1
				INNER JOIN ProyectoSistemaMatricula.unah.Correo T2
						ON T1.idCorreo = T2.idCorreo
					 WHERE T1.idPersona = @idPersona
					   AND T1.idCorreo = @idCorreo
		  )
	BEGIN
		BEGIN TRY
			BEGIN TRANSACTION
				IF @TipoCorreo = 0
					BEGIN
						UPDATE ProyectoSistemaMatricula.unah.Correo
							SET correoPersonal = @correo
						  WHERE idCorreo = @idCorreo

						 COMMIT TRANSACTION
						 SELECT 1 AS RESULTADO
					END
				ELSE
					BEGIN
						IF @TipoCorreo = 1
						BEGIN
							UPDATE ProyectoSistemaMatricula.unah.Correo
								SET correoInstitucional = @correo
							  WHERE idCorreo = @idCorreo

							COMMIT TRANSACTION
							SELECT 1 AS RESULTADO
						END
					END
		END TRY
		BEGIN CATCH
			ROLLBACK TRANSACTION
			
			SELECT 0 AS RESULTADO
		END CATCH
	END
ELSE
	BEGIN
		PRINT 'La persona o correo no estan registrados, Verifique los datos ingresados'
	END
/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.Correo

SELECT * 
	FROM ProyectoSistemaMatricula.unah.Persona
*/
