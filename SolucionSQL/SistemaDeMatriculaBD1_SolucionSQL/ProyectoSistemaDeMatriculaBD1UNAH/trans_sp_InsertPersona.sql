-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 03/04/2020 9:10:50
-- Description:	Insertar una persona por medio de una transaccion en un procedimiento almacenado
-- =============================================
CREATE PROCEDURE [unah].[spTransactionInsertPersona](
					 @idPersona VARCHAR(15),
					 @primerNombre VARCHAR(35),
					 @segundoNombre VARCHAR(35),
					 @primerApellido VARCHAR(35),
					 @segundoApellido VARCHAR(35),
					 @fechaNacimiento VARCHAR(8),
					 @idDireccion INT,
					 @idNacionalidad INT,
					 @idGrupoEtnico INT,
					 @idSexo INT,
					 @idDiscapacidad INT,
					 @idEstadoCivil INT,
					 @idCorreo INT,
					 @idReferencia INT
		)
AS
SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION 
		INSERT INTO ProyectoSistemaMatricula.unah.Persona(idPersona,
														  primerNombre,
														  segundoNombre,
														  primerApellido,
														  segundoApellido,
														  fechaNacimiento,
														  idDireccion,
														  idNacionalidad,
														  idGrupoEtnico,
														  idSexo,
														  idDiscapacidad,
														  idEstadoCivil,
														  idCorreo,
														  idReferencia
														  )
													VALUES(@idPersona,
														   @primerNombre,
														   @segundoNombre,
														   @primerApellido,
														   @segundoApellido,
														   @fechaNacimiento,
														   @idDireccion,
														   @idNacionalidad,
														   @idGrupoEtnico,
														   @idSexo,
														   @idDiscapacidad,
														   @idEstadoCivil,
														   @idCorreo,
														   @idReferencia
														   )
		IF @@ROWCOUNT = 1
			BEGIN
				COMMIT TRANSACTION

				PRINT 'La persona se registro correctamente'
				SELECT 1 AS RESULTADO
			END


END TRY
BEGIN CATCH
	ROLLBACK TRANSACTION

	PRINT 'La Persona no se pudo registrar'
	SELECT 0 AS RESULTADO
END CATCH