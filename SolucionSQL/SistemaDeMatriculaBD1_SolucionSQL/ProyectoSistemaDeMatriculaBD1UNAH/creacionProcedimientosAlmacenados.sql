/*
	Procedimientos almacenas: 
		*Aqui estan la manera general de crearlos, por lo que se debera revisar para
		 su creación real.
		*Tendremos que editar si los campos de ID o CODIGO sera autoincrementables en
		  algunas tablas
*/
--------------------------------------
--DATOS DEMOGRAFICOS
--------------------------------------
/*------------------------------------------------------------------
	TABLA: Continente
*/
CREATE PROCEDURE [unah].[InsertarDatosContinente](
			@idContinente INT,
			@continente VARCHAR(45)
	)
AS
SET NOCOUNT ON
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Continente(idContinente,
														 continente)
												  VALUES(@idContinente,
														 @continente)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Pais
*/
CREATE PROCEDURE [unah].[InsertarDatosPais](
			@idPais INT,
			@pais VARCHAR(45),
			@idContinente INT
	)
AS
SET NOCOUNT ON
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Pais(idPais,
												   pais,
												   idContinente)
											VALUES(@idPais,
												   @pais,
												   @idContinente)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Departamento
*/
CREATE PROCEDURE [unah].[InsertarDatosDepartamento](
			@idDepartamento INT,
			@departamento VARCHAR(45),
			@idPais INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,
														   departamento,
														   idPais)
													VALUES(@idDepartamento,
														   @departamento,
														   @idPais)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO

/*------------------------------------------------------------------
	TABLA: Municipio
*/
CREATE PROCEDURE [unah].[InsertarDatosMunicipio](
			@idMunicipio INT,
			@municipio VARCHAR(45),
			@idDepartamento INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio,
														municipio,
														idDepartamento)
												 VALUES(@idMunicipio,
														@municipio,
														@idDepartamento)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Direccion
*/
CREATE PROCEDURE [unah].[InsertarDatosDireccion](
			@idDireccion INT,
			@idMunicipio INT,
			@idDepartamento INT,
			@descripcion VARCHAR(300)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Direccion(idDireccion,
														idMucicipio,
														idDepartamento,
														descripcion
														)
												 VALUES(@idDireccion,
														@idMunicipio,
														@idDepartamento,
														@descripcion
														)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


--------------------------------------
--INFRAESTRUCTURA
--------------------------------------

/*------------------------------------------------------------------
	TABLA: CentroUniversitario
*/
CREATE PROCEDURE [unah].[InsertarDatosCentroUniversitario](
			@idCentro INT,
			@centroUniversitario VARCHAR(70),
			@sigla VARCHAR(10),
			@fechaFundacion DATE,
			@idDireccion INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro,
																  centroUniversitario,
																  sigla,
																  fechaFundacion,
																  idDireccion
																  )
														   VALUES(@idCentro,
																  @centroUniversitario,
																  @sigla,
																  @fechaFundacion,
																  @idDireccion
																  )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Edificio
*/
CREATE PROCEDURE [unah].[InsertarDatosEdificio](
			@idEdificio INT,
			@edificio VARCHAR(45),
			@codigoEdificio VARCHAR(10),
			@fechaFundacion DATE,
			@observacion VARCHAR(45),
			@idCentroUniversitario INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio,
													   edificio,
													   codigoEdificio,
													   fechaFundacion,
													   observacion,
													   idCentroUniversitario
													   )
												VALUES(@idEdificio,
													   @edificio,
													   @codigoEdificio,
													   @fechaFundacion,
													   @observacion,
													   @idCentroUniversitario
													   )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Aula
*/
CREATE PROCEDURE [unah].[InsertarDatosAula](
			@idAula INT,
			@codigoAula VARCHAR(10),
			@cantidadMaximaEstudiante INT,
			@observacion VARCHAR(45),
			@idEdificio INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula,
												   codigoAula,
												   cantidadMaximaDeEstudiante,
												   observacion,
												   idEdificio
												   )
											VALUES(@idAula,
												   @codigoAula,
												   @cantidadMaximaEstudiante,
												   @observacion,
												   @idEdificio
												   )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Facultad
*/
CREATE PROCEDURE [unah].[InsertarDatosFacultad](
			@idFacultad INT,
			@facultad VARCHAR(50),
			@idEdificio INT,
			@idCentroUniversitario INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Facultad(idFacultad,
													   facultad,
													   idEdificio,
													   idCentroUniversitario
													   )
												VALUES(@idFacultad,
													   @facultad,
													   @idEdificio,
													   @idCentroUniversitario
													   )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


--------------------------------------
--DATOS PERSONALES
--------------------------------------

/*------------------------------------------------------------------
	TABLA: GrupoEtnico
*/
CREATE PROCEDURE [unah].[InsertarDatosGruposEtnico](
			@idGrupoEtnico INT,
			@descripcion VARCHAR(15)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico(idGrupoEtnico,
														   descripcion)
													VALUES(@idGrupoEtnico,
														   @descripcion)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: TipoDiscapacidad
*/
CREATE PROCEDURE [unah].[InsertarDatosTipoDiscapacidad](
			@idDiscapacidad INT,
			@descripcion VARCHAR(15)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad(idDiscapacidad,
															   descripcion)
													    VALUES(@idDiscapacidad,
														       @descripcion)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Nacionalidad
*/
CREATE PROCEDURE [unah].[InsertarDatosNacionalidad](
			@idNacionalidad INT,
			@descripcion VARCHAR(45)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Nacionalidad(idNacionalidad,
														   descripcion)
													VALUES(@idNacionalidad,
														   @descripcion)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: EstadoCivil
*/
CREATE PROCEDURE [unah].[InsertarDatosEstadoCivil](
			@idEstado INT,
			@descripcion VARCHAR(15)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil(idEstado,
														  descripcion)
												   VALUES(@idEstado,
														  @descripcion)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Sexo
*/
CREATE PROCEDURE [unah].[InsertarDatosSexo](
			@idSexo INT,
			@descripcion VARCHAR(15)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Sexo(idSexo,
												   descripcion)
											VALUES(@idSexo,
												   @descripcion)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Parentesco
*/
CREATE PROCEDURE [unah].[InsertarDatosParentesco](
			@idParentesco INT,
			@descripcion VARCHAR(45)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Parentesco(idParentesco,
												         descripcion)
											      VALUES(@idParentesco,
												         @descripcion)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Referencia
*/
CREATE PROCEDURE [unah].[InsertarDatosReferencia](
			@idReferencia INT,
			@nombreCompleto VARCHAR(100),
			@idParentesco INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Referencia(idReferencia,
														 nombreCompleto,
														 idParentesco)
												  VALUES(@idReferencia,
														 @nombreCompleto,
														 @idParentesco)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Correo
*/
CREATE PROCEDURE [unah].[InsertarDatosCorreo](
			@idCorreo INT,
			@correoPersonal VARCHAR(45),
			@correoInstitucional VARCHAR(45)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Correo(idCorreo,
													 correoPersonal,
													 correoInstitucional)
											  VALUES(@idCorreo,
													 @correoPersonal,
													 @correoInstitucional
													 )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Persona
*/
CREATE PROCEDURE [unah].[InsertarDatosPersona](
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
BEGIN TRY
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
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Telefono
*/
CREATE PROCEDURE [unah].[InsertarDatosTelefono](
			@idTelefono INT,
			@telefono VARCHAR(15),
			@idPersona VARCHAR(15),
			@idReferencia INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Telefono(idTelefono,
													   telefono,
													   idPersona,
													   idReferencia)
												VALUES(@idTelefono,
													   @telefono,
													   @idPersona,
													   @idReferencia)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


--------------------------------------
--DATOS EMPLEADO
--------------------------------------

/*------------------------------------------------------------------
	TABLA: TipoEmpleado
*/
CREATE PROCEDURE [unah].[InsertarDatosTipoEmpleado](
			@idTipoEmpleado INT,
			@descripcion VARCHAR(50)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.TipoEmpleado(idTipoEmpleado,
														   descripcion)
													VALUES(@idTipoEmpleado,
														   @descripcion)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Cargo
*/
CREATE PROCEDURE [unah].[InsertarDatosCargo](
			@idCargo INT,
			@tipoCargo VARCHAR(45)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Cargo(idCargo,
													tipoCargo)
											 VALUES(@idCargo,
													@tipoCargo)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Contrato
*/
CREATE PROCEDURE [unah].[InsertarDatosContrato](
			@idContrato INT,
			@descripcion VARCHAR(50)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Contrato(idContrato,
													   descripcion)
												VALUES(@idContrato,
													   @descripcion)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: PlanEstudio
*/
CREATE PROCEDURE [unah].[InsertarDatosPlanEstudio](
			@idPlanEstudio INT,
			@nombre VARCHAR(80),
			@duracionCarrera VARCHAR(25),
			@totalUV INT,
			@fechaRevision VARCHAR(8)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.PlanEstudio(idPlanEstudio,
														  nombre,
														  duracionCarrera,
														  totalUV,
														  fechaRevision)
												   VALUES(@idPlanEstudio,
														  @nombre,
														  @duracionCarrera,
														  @totalUV,
														  @fechaRevision
														  )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Carrera
*/
CREATE PROCEDURE [unah].[InsertarDatosCarrera](
			@idCarrera INT,
			@nombreCarrera VARCHAR(100),
			@requisitoIngreso INT,
			@fechaCreacion VARCHAR(8),
			@idFacultad INT,
			@idPlanEstudio INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Carrera(idCarrera,
													  nombreCarrera,
													  requisitoIngreso,
													  fechaCreacion,
													  idFacultad,
													  idPlanEstudio
													  )
											   VALUES(@idCarrera,
													  @nombreCarrera,
													  @requisitoIngreso,
													  @fechaCreacion,
													  @idFacultad,
													  @idPlanEstudio)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: DepartamentoCarrera
*/
CREATE PROCEDURE [unah].[InsertarDatosDepartamentoCarrera](
			@idDeptoCarrera INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.DepartamentoCarrera(idDeptoCarrera
																  )
														   VALUES(@idDeptoCarrera
																  )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Empleado
*/
CREATE PROCEDURE [unah].[InsertarDatosEmpleado](
			@idEmpleado INT,
			@fechaInicioEmpleado VARCHAR(8),
			@fechaFinEmpleado VARCHAR(8),
			@idPersona VARCHAR(15),
			@idtipoEmpleado INT,
			@idDepartamento INT,
			@idcargo INT,
			@idContrato INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Empleado(idEmpleado,
													   fechaInicioEmpleado,
													   fechaFinEmpleado,
													   idPersona,
													   idtipoEmpleado,
													   idDepartamento,
													   idcargo,
													   idContrato)
												VALUES(@idEmpleado,
													   @fechaInicioEmpleado,
													   @fechaFinEmpleado,
													   @idPersona,
													   @idtipoEmpleado,
													   @idDepartamento,
													   @idcargo,
													   @idContrato)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: JefeDepartamento
*/
CREATE PROCEDURE [unah].[InsertarDatosJefeDepartamento](
			@idJefe INT,
			@fechaInicioCargo VARCHAR(8),
			@fechaInicioEmpleado VARCHAR(8),
			@fechaFinCargo VARCHAR(8)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.JefeDepartamento(idJefeDepartamento,
															   fechaInicioCargo,
															   fechaInicioEmpleado,
															   fechaFinCargo)
														VALUES(@idJefe,
															   @fechaInicioCargo,
															   @fechaInicioEmpleado,
															   @fechaFinCargo)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: CoordinadorDepartamento
*/
CREATE PROCEDURE [unah].[InsertarDatosCoordinadorDepartamento](
			@idCoordinadorDepto INT,
			@fechaInicioEmpleado VARCHAR(8),
			@fechaInicioCargo VARCHAR(8),
			@fechaFinCargo VARCHAR(8)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.CoordinadorDepartamento(idCoordinadorDepto,
																	  fechaInicioEmpleado,
																	  fechaInicioCargo,
																	  fechaFinCargo)
															   VALUES(@idCoordinadorDepto,
																	  @fechaInicioEmpleado,
																	  @fechaInicioCargo,
																	  @fechaFinCargo)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Decano
*/
CREATE PROCEDURE [unah].[InsertarDatosDecano](
			@idDecano INT,
			@fechaInicioEmpleado VARCHAR(8),
			@fechaInicioCargo VARCHAR(8),
			@fechaFinCargo VARCHAR(8),
			@idFacultad INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Decano(idDecano,
													 fechaInicioEmpleado,
													 fechaInicioCargo,
													 fechaFinCargo,
													 idFacultad
													 )
											  VALUES(@idDecano,
													 @fechaInicioEmpleado,
													 @fechaInicioCargo,
													 @fechaFinCargo,
													 @idFacultad)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: GradoAcademico
*/
CREATE PROCEDURE [unah].[InsertarDatosGradoAcademico](
			@idGradoAcademico INT,
			@tituloObtenido VARCHAR(50),
			@nombreInstitucion VARCHAR(45),
			@fechaAdquisicion VARCHAR(8),
			@idEmpleado INT,
			@fechaInicioEmpleado VARCHAR(8),
			@idPais INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.GradoAcademico(idGradoAcademico,
														     tituloObtenido,
															 nombreInstitucion,
															 fechaAdquisicion,
															 idEmpleado,
															 fechaInicioEmpleado,
															 idPais
															 )
													  VALUES(@idGradoAcademico,
													         @tituloObtenido,
															 @nombreInstitucion,
															 @fechaAdquisicion,
															 @idEmpleado,
															 @fechaInicioEmpleado,
															 @idPais
															 )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Instructor
*/
CREATE PROCEDURE [unah].[InsertarDatosInstructor](
			@idInstructor INT,
			@idDepartamento INT,
			@fechaInicioEmpleado VARCHAR(8),
			@fechaInicioCargo VARCHAR(8),
			@fechaFinCargo VARCHAR(8)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Instructor(idInstructor,
														 idDepartamento,
														 fechaInicioEmpleado,
														 fechaInicioCargo,
														 fechaFinCargo)
												  VALUES(@idInstructor,
														 @idDepartamento,
														 @fechaInicioEmpleado,
														 @fechaInicioCargo,
														 @fechaFinCargo)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Docente
*/
CREATE PROCEDURE [unah].[InsertarDatosDocente](
			@idDocente INT,
			@idDepartamento INT,
			@fechaInicioEmpleado VARCHAR(8),
			@fechaInicioCargo VARCHAR(8),
			@fechaFinCargo VARCHAR(8)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Docente(idDocente,
													  idDepartamento,
													  fechaInicioEmpleado,
													  fechaInicioCargo,
													  fechaFinCargo)
											   VALUES(@idDocente,
													  @idDepartamento,
													  @
													  )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: 
*/
CREATE PROCEDURE [unah].[](
			
	)
AS
BEGIN TRY
	
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: 
*/
CREATE PROCEDURE [unah].[](
			
	)
AS
BEGIN TRY
	
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO