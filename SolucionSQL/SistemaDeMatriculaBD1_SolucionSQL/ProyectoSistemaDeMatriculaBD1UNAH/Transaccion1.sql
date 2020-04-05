/*
	TRANSACCION # 1: Insertar una persona por medio de una transaccion en un procedimiento almacenado
*/
/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.Persona
*/

ALTER PROCEDURE SP_InsertPersona(
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


--------------------------------------------------------------------------------------------------------------------
/*
	TRANSACCION #2 : Transaccion para reducir el numero de cupos en una seccion.
					 *Aqui se inserta un registro en la tabla "SeccionMatricula", y al realizarce correctamente
					  reduce en uno los cupos disponibles en la seccion de la asignatura correspondiente
*/
--------------------------------------------------------------------------------------------------------------------
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

ALTER PROCEDURE SP_InsertSeccionMatricula(
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



--------------------------------------------------------------------------------------------------------
/*
	TRANSACCION #3: Transaccion con la que se actualizaran los datos de un determinado Estudiante
*/
--------------------------------------------------------------------------------------------------------
/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.Correo

SELECT * 
	FROM ProyectoSistemaMatricula.unah.Persona
*/

ALTER PROCEDURE SP_UpdateCorreo(
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