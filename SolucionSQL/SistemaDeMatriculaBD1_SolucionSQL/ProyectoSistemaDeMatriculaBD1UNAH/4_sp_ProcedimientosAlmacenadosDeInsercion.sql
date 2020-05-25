/*
	Procedimientos almacenas: 
		*Aqui estan la manera general de crearlos, por lo que se debera revisar para
		 su creación real.
		*Tendremos que editar si los campos de ID o CODIGO sera autoincrementables en
		  algunas tablas
*/
---------------------------------------
--DATOS DEMOGRAFICOS
---------------------------------------
/*------------------------------------------------------------------
	TABLA: Continente
*/
CREATE PROCEDURE [unah].[spspInsertarDatosContinente](
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
CREATE PROCEDURE [unah].[spspInsertarDatosPais](
			@codigoPais VARCHAR(6),
			@pais VARCHAR(45),
			@idContinente INT
	)
AS
SET NOCOUNT ON
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Pais(codigoPais,
												   pais,
												   idContinente)
											VALUES(@codigoPais,
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
CREATE PROCEDURE [unah].[spspInsertarDatosDepartamento](
			@idDepartamento INT,
			@departamento VARCHAR(45),
			@codigoPais INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,
														   departamento,
														   codigoPais)
													VALUES(@idDepartamento,
														   @departamento,
														   @codigoPais)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO

/*------------------------------------------------------------------
	TABLA: Municipio
*/
CREATE PROCEDURE [unah].[spspInsertarDatosMunicipio](
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
CREATE PROCEDURE [unah].[spspInsertarDatosDireccion](
			@idDireccion INT,
			@idMunicipio INT,
			@idDepartamento INT,
			@descripcion VARCHAR(300)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Direccion(idDireccion,
														idMunicipio,
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
CREATE PROCEDURE [unah].[spspInsertarDatosCentroUniversitario](
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
CREATE PROCEDURE [unah].[spspInsertarDatosEdificio](
			@idEdificio INT,
			@edificio VARCHAR(45),
			@fechaFundacion DATE,
			@observacion VARCHAR(45),
			@idCentroUniversitario INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idCodigoEdificio,
													   edificio,
													   fechaFundacion,
													   observacion,
													   idCentroUniversitario
													   )
												VALUES(@idEdificio,
													   @edificio,
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
CREATE PROCEDURE [unah].[spInsertarDatosAula](
			@idCodigoAula VARCHAR(25),
			@idCodigoEdificio VARCHAR(25),
			@cantidadMaximaEstudiante INT,
			@observacion VARCHAR(45),
			@idEdificio INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Aula(idCodigoAula,
												   idCodigoEdificio,
												   cantidadMaximaDeEstudiante,
												   observacion 
												   )
											VALUES(@idCodigoAula,
												   @idCodigoEdificio,
												   @cantidadMaximaEstudiante,
												   @observacion
												   )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Facultad
*/
CREATE PROCEDURE [unah].[spInsertarDatosFacultad](
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
CREATE PROCEDURE [unah].[spInsertarDatosGruposEtnico](
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
CREATE PROCEDURE [unah].[spInsertarDatosTipoDiscapacidad](
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
CREATE PROCEDURE [unah].[spInsertarDatosNacionalidad](
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
CREATE PROCEDURE [unah].[spInsertarDatosEstadoCivil](
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
CREATE PROCEDURE [unah].[spInsertarDatosSexo](
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
CREATE PROCEDURE [unah].[spInsertarDatosParentesco](
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
CREATE PROCEDURE [unah].[spInsertarDatosReferencia](
			@idReferencia INT,
			@nombreCompleto VARCHAR(100),
			@numeroTelefono VARCHAR(15),
			@idParentesco INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Referencia(idReferencia,
														 nombreCompleto,
														 numeroTelefono,
														 idParentesco)
												  VALUES(@idReferencia,
														 @nombreCompleto,
														 @numeroTelefono,
														 @idParentesco)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Correo
*/
CREATE PROCEDURE [unah].[spInsertarDatosCorreo](
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
CREATE PROCEDURE [unah].[spInsertarDatosPersona](
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
CREATE PROCEDURE [unah].[spInsertarDatosTelefono](
			@idTelefono INT,
			@telefono VARCHAR(15),
			@idPersona VARCHAR(15)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Telefono(idTelefono,
													   telefono,
													   idPersona)
												VALUES(@idTelefono,
													   @telefono,
													   @idPersona)
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
CREATE PROCEDURE [unah].[spInsertarDatosTipoEmpleado](
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
CREATE PROCEDURE [unah].[spInsertarDatosCargo](
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
CREATE PROCEDURE [unah].[spInsertarDatosContrato](
			@idContrato INT,
			@descripcion VARCHAR(45)
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
CREATE PROCEDURE [unah].[spInsertarDatosPlanEstudio](
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
CREATE PROCEDURE [unah].[spInsertarDatosCarrera](
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
	TABLA: Empleado
*/
CREATE PROCEDURE [unah].[spInsertarDatosEmpleado](
			@idEmpleado INT,
			@fechaInicioEmpleado VARCHAR(8),
			@fechaFinEmpleado VARCHAR(8),
			@idPersona VARCHAR(15),
			@idtipoEmpleado INT,
			@idCarrera INT,
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
													   idCarrera,
													   idcargo,
													   idContrato)
												VALUES(@idEmpleado,
													   @fechaInicioEmpleado,
													   @fechaFinEmpleado,
													   @idPersona,
													   @idtipoEmpleado,
													   @idCarrera,
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
CREATE PROCEDURE [unah].[spInsertarDatosJefeDepartamento](
			@idJefe INT,
			@fechaInicioCargo VARCHAR(8),
			@fechaInicioEmpleado VARCHAR(8),
			@fechaFinCargo VARCHAR(8),
			@idCarrera INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.JefeDepartamento(idJefeDepartamento,
															   fechaInicioCargo,
															   fechaInicioEmpleado,
															   fechaFinCargo,
															   idCarrera)
														VALUES(@idJefe,
															   @fechaInicioCargo,
															   @fechaInicioEmpleado,
															   @fechaFinCargo,
															   @idCarrera)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: CoordinadorDepartamento
*/
CREATE PROCEDURE [unah].[spInsertarDatosCoordinadorDepartamento](
			@idCoordinadorDepto INT,
			@fechaInicioEmpleado VARCHAR(8),
			@fechaInicioCargo VARCHAR(8),
			@fechaFinCargo VARCHAR(8),
			@idCarrera INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.CoordinadorDepartamento(idCoordinadorDepto,
																	  fechaInicioEmpleado,
																	  fechaInicioCargo,
																	  fechaFinCargo,
																	  idCarrera)
															   VALUES(@idCoordinadorDepto,
																	  @fechaInicioEmpleado,
																	  @fechaInicioCargo,
																	  @fechaFinCargo,
																	  @idCarrera)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Decano
*/
CREATE PROCEDURE [unah].[spInsertarDatosDecano](
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
CREATE PROCEDURE [unah].[spInsertarDatosGradoAcademico](
			@idGradoAcademico INT,
			@tituloObtenido VARCHAR(50),
			@nombreInstitucion VARCHAR(45),
			@fechaAdquisicion VARCHAR(8),
			@idEmpleado INT,
			@fechaInicioEmpleado VARCHAR(8),
			@codigoPais VARCHAR(6)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.GradoAcademico(idGradoAcademico,
														     tituloObtenido,
															 nombreInstitucion,
															 fechaAdquisicion,
															 idEmpleado,
															 fechaInicioEmpleado,
															 codigoPais
															 )
													  VALUES(@idGradoAcademico,
													         @tituloObtenido,
															 @nombreInstitucion,
															 @fechaAdquisicion,
															 @idEmpleado,
															 @fechaInicioEmpleado,
															 @codigoPais
															 )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Instructor
*/
CREATE PROCEDURE [unah].[spInsertarDatosInstructor](
			@idInstructor INT,
			@fechaInicioEmpleado VARCHAR(8),
			@fechaInicioCargo VARCHAR(8),
			@fechaFinCargo VARCHAR(8),
			@horaInicio TIME,
			@horaFin TIME,
			@idCarrera INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Instructor(idInstructor,
														 fechaInicioEmpleado,
														 fechaInicioCargo,
														 fechaFinCargo,
														 horaInicio,
														 horaFin,
														 idCarrera)
												  VALUES(@idInstructor,
														 @fechaInicioEmpleado,
														 @fechaInicioCargo,
														 @fechaFinCargo,
														 @horaInicio,
														 @horaFin,
														 @idCarrera)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Docente
*/
CREATE PROCEDURE [unah].[spInsertarDatosDocente](
			@idDocente INT,
			@fechaInicioEmpleado VARCHAR(8),
			@fechaInicioCargo VARCHAR(8),
			@fechaFinCargo VARCHAR(8),
			@horaInicio TIME,
			@horaFin TIME,
			@idCarrera INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Docente(idDocente,
													  fechaInicioEmpleado,
													  fechaInicioCargo,
													  fechaFinCargo,
													  horaInicio,
													  horaFin,
													  idCarrera)
											   VALUES(@idDocente,
													  @fechaInicioEmpleado,
													  @fechaInicioCargo,
													  @fechaFinCargo,
													  @horaInicio,
													  @horaFin,
													  @idCarrera)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: TipoPeriodo
*/
CREATE PROCEDURE [unah].[spInsertarDatosTipoPeriodo](
			@idTipoPeriodo INT,
			@descripcion VARCHAR(15)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.TipoPeriodo(idTipoPeriodo,
														  descripcion)
												   VALUES(@idTipoPeriodo,
														  @descripcion)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Asignatura
*/
CREATE PROCEDURE [unah].[spInsertarDatosAsignatura](
			@idAsignatura  VARCHAR(15),
			@nombreAsignatura VARCHAR(45),
			@unidadesValorativas INT,
			@examenUnificado BIT,
			@poseeLaboratorio BIT,
			@idTipoPeriodo INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,
														 nombreAsignatura,
														 unidadesValorativas,
														 examenUnificado,
														 poseeLaboratorio,
														 idTipoPeriodo)
												  VALUES(@idAsignatura,
														 @nombreAsignatura,
														 @unidadesValorativas,
														 @examenUnificado,
														 @poseeLaboratorio,
														 @idTipoPeriodo
														 )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: CoordinadorAsignatura
*/
CREATE PROCEDURE [unah].[spInsertarDatosCoordinadorAsignatura](
			@idCoordinadorAsignatura INT,
			@fechaInicioEmpleado VARCHAR(8),
			@fechaInicioCargo VARCHAR(8),
			@fechaFinCargo VARCHAR(8),
			@idAsignatura VARCHAR(15)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.CoordinadorAsignatura(idCoordinadorAsignatura,
																	fechaInicioEmpleado,
																	fechaInicioCargo,
																	fechaFinCargo,
																	idAsignatura
																	)
															 VALUES(@idCoordinadorAsignatura,
																	@fechaInicioEmpleado,
																	@fechaInicioCargo,
																	@fechaFinCargo,
																	@idAsignatura
																	)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


--------------------------------------
--DATOS ESTUDIANTES
--------------------------------------
/*------------------------------------------------------------------
	TABLA: NotaExamenAptitud
*/
CREATE PROCEDURE [unah].[spInsertarDatosNotaExamenAptitud](
			@idNotaAptitud INT,
			@notaPaa INT,
			@notaPam INT,
			@notaPccns INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud(idNotaAptitud,
																notaPaa,
																notaPam,
																notaPccns)
														 VALUES(@idNotaAptitud,
																@notaPaa,
																@notaPam,
																@notaPccns)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Periodo
*/
CREATE PROCEDURE [unah].[spInsertarDatosPeriodo](
			@idPeriodo CHAR(3),
			@fechaInicio VARCHAR(8),
			@fechaFinalizacion VARCHAR(8),
			@anio INT,
			@idTipoPeriodo INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Periodo(idPeriodo,
													  fechaInicio,
													  fechaFinalizacion,
													  anio,
													  idTipoPeriodo)
											   VALUES(@idPeriodo,
													  @fechaInicio,
													  @fechaFinalizacion,
													  @anio,
													  @idTipoPeriodo)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: TipoSeccion
*/
CREATE PROCEDURE [unah].[spInsertarDatosTipoSeccion](
			@idTipoSeccion INT,
			@tipo VARCHAR (25)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.tipoSeccion(idTipoSeccion,
														  tipo)
												   VALUES(@idTipoSeccion,
														  @tipo)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Estudiante
*/
CREATE PROCEDURE [unah].[spInsertarDatosEstudiante](
			@idEstudiante INT,
			@perteneceDeportes BIT,
			@UVDisponibles INT,
			@contrasenia VARCHAR(45),
			@idCentro INT,
			@idNotaAptitud INT,
			@idCarrera INT,
			@idpersona VARCHAR(15),
			@cursoCursoModalidaDeClasesVirtuales BIT,
			@cursoCursoIntroduccionVidaUniversitaria BIT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Estudiante(idEstudiante,
														 esRepresentanteArteoDeporte,
														 UVDisponibles,
														 contrasenia,
														 idCentro,
														 idNotaAptitud,
														 idCarrera,
														 idpersona,
														 cursoCursoModalidaDeClasesVirtuales,
														 cursoCursoIntroduccionVidaUniversitaria
														 )
												  VALUES(@idEstudiante,
														 @perteneceDeportes,
														 @UVDisponibles,
														 @contrasenia,
														 @idCentro,
														 @idNotaAptitud,
														 @idCarrera,
														 @idpersona,
														 @cursoCursoModalidaDeClasesVirtuales,
														 @cursoCursoIntroduccionVidaUniversitaria
														 )
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: HistorialAcademico
*/
CREATE PROCEDURE [unah].[spInsertarDatosHistorialAcademico](
			@idHistorial INT,
			@indicePeriodo INT,
			@indiceGlobal INT,
			@idEstudiante INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico(idHistorial,
																 indicePeriodo,
																 indiceGlobal,
																 idEstudiante)
														  VALUES(@idHistorial,
																 @indicePeriodo,
																 @indiceGlobal,
																 @idEstudiante)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Matricula
*/
CREATE PROCEDURE [unah].[spInsertarDatosMatricula](
			@idMatricula INT,
			@confirmacionPago BIT,
			@fechaInicio VARCHAR(8),
			@fechaFin VARCHAR(8),
			@idPeriodo INT,
			@fechaInicioPeriodo DATE,
			@idTipoPeriodo INT,
			@idEstudiante INT,
			@idHistorial INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Matricula(idMatricula,
														confirmacionPago,
														fechaInicio,
														fechaFin,
														idPeriodo,
														fechaInicioPeriodo,
														idTipoPeriodo,
														idEstudiante,
														idHistorial)
												 VALUES(@idMatricula,
														@confirmacionPago,
														@fechaInicio,
														@fechaFin,
														@idPeriodo,
														@fechaInicioPeriodo,
														@idTipoPeriodo,
														@idEstudiante,
														@idHistorial
														)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: ObservacionNotaFinal
*/
CREATE PROCEDURE [unah].[spInsertarDatosObservacionNotaFinal](
			@idObservacionNotaFinal INT,
			@descripcion VARCHAR(20)
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal(idObservacionNotaFinal,
																   descripcion)
															VALUES(@idObservacionNotaFinal,
																   @descripcion)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO

/*------------------------------------------------------------------
	TABLA: PensumAcademico
*/
CREATE PROCEDURE [unah].[spInsertarDatosPensumAcademico](
			@idAsignatura INT,
			@idPlanEstudio INT 
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,
															  idPlanEstudio)
													   VALUES(@idAsignatura,
															  @idPlanEstudio)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO


/*------------------------------------------------------------------
	TABLA: Requisitos
*/
CREATE PROCEDURE [unah].[spInsertarDatosRequisitos](
			@idAsignatura INT,
			@idPlanEstudio INT,  /* DUDAS no se si dejaarla como lo tenemos en word o en lo otro*/
			@idRequisito1 INT,
			@idRequisito2 INT
	)
AS
BEGIN TRY
	INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,
														 idPlanEstudio,
														 idRequisito1,
														 idRequisito2)
												  VALUES(@idAsignatura,
														 @idPlanEstudio,
														 @idRequisito1,
														 @idRequisito2)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO
--------------------------------------
--CORRECCION: Inserción de Estudiante y empleado = Persona
--------------------------------------

/*------------------------------------------------------------------
	TABLAS: Persona y Estudiante 
*/
CREATE PROCEDURE [unah].[spInsertarDatosPersonaEstudiante](
			@idPersona VARCHAR(15),
			@primerNombre VARCHAR(35),
			@segundoNombre VARCHAR(35),
			@primerApellido VARCHAR(35),
			@segundoApellido VARCHAR(35),
			@fechaNacimiento VARCHAR(8),
			--@idDireccion INT,
			@idNacionalidad INT,
			@idGrupoEtnico INT,
			@idSexo INT,
			@idDiscapacidad INT,
			@idEstadoCivil INT,
			--@idCorreo INT,
			--@idReferencia INT,

			@idEstudiante INT,
			@perteneceDeportes BIT,
			@UVDisponibles INT,
			@contrasenia VARCHAR(45),
			@idCentro INT,
			@idNotaAptitud INT,
			@idCarrera INT,
			--@idpersona VARCHAR(15),
			@cursoCursoModalidaDeClasesVirtuales BIT,
			@cursoCursoIntroduccionVidaUniversitaria BIT,

			@idDireccion INT,
			@idMunicipio INT,
			@idDepartamento INT,
			@descripcion VARCHAR(300),

			@idCorreo INT,
			@correoPersonal VARCHAR(45),
			@correoInstitucional VARCHAR(45),

			@idReferencia INT,
			@nombreCompleto VARCHAR(100),
			@numeroTelefono VARCHAR(15),
			@idParentesco INT
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

	INSERT INTO ProyectoSistemaMatricula.unah.Estudiante(idEstudiante,
														 esRepresentanteArteoDeporte,
														 UVDisponibles,
														 contrasenia,
														 idCentro,
														 idNotaAptitud,
														 idCarrera,
														 idpersona,
														 cursoCursoModalidaDeClasesVirtuales,
														 cursoCursoIntroduccionVidaUniversitaria
														 )
												  VALUES(@idEstudiante,
														 @perteneceDeportes,
														 @UVDisponibles,
														 @contrasenia,
														 @idCentro,
														 @idNotaAptitud,
														 @idCarrera,
														 @idpersona,
														 @cursoCursoModalidaDeClasesVirtuales,
														 @cursoCursoIntroduccionVidaUniversitaria
														 )

	INSERT INTO ProyectoSistemaMatricula.unah.Direccion(idDireccion,
														idMunicipio,
														idDepartamento,
														descripcion
														)
												 VALUES(@idDireccion,
														@idMunicipio,
														@idDepartamento,
														@descripcion
														)

	INSERT INTO ProyectoSistemaMatricula.unah.Correo(idCorreo,
													 correoPersonal,
													 correoInstitucional)
											  VALUES(@idCorreo,
													 @correoPersonal,
													 @correoInstitucional
													 )

	INSERT INTO ProyectoSistemaMatricula.unah.Referencia(idReferencia,
														 nombreCompleto,
														 numeroTelefono,
														 idParentesco)
												  VALUES(@idReferencia,
														 @nombreCompleto,
														 @numeroTelefono,
														 @idParentesco)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO



/*------------------------------------------------------------------
	TABLAS: Persona y Empleado 
*/
CREATE PROCEDURE [unah].[spInsertarDatosPersonaEmpleado](
			@idPersona VARCHAR(15),
			@primerNombre VARCHAR(35),
			@segundoNombre VARCHAR(35),
			@primerApellido VARCHAR(35),
			@segundoApellido VARCHAR(35),
			@fechaNacimiento VARCHAR(8),
			--@idDireccion INT,
			@idNacionalidad INT,
			@idGrupoEtnico INT,
			@idSexo INT,
			@idDiscapacidad INT,
			@idEstadoCivil INT,
			--@idCorreo INT,
			--@idReferencia INT,

			@idEmpleado INT,
			@fechaInicioEmpleado VARCHAR(8),
			@fechaFinEmpleado VARCHAR(8),
			--@idPersona VARCHAR(15),
			@idtipoEmpleado INT,
			@idCarrera INT,
			@idcargo INT,
			@idContrato INT,

			@idDireccion INT,
			@idMunicipio INT,
			@idDepartamento INT,
			@descripcion VARCHAR(300),

			@idCorreo INT,
			@correoPersonal VARCHAR(45),
			@correoInstitucional VARCHAR(45),

			@idReferencia INT,
			@nombreCompleto VARCHAR(100),
			@numeroTelefono VARCHAR(15),
			@idParentesco INT
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

	INSERT INTO ProyectoSistemaMatricula.unah.Empleado(idEmpleado,
													   fechaInicioEmpleado,
													   fechaFinEmpleado,
													   idPersona,
													   idtipoEmpleado,
													   idCarrera,
													   idcargo,
													   idContrato)
												VALUES(@idEmpleado,
													   @fechaInicioEmpleado,
													   @fechaFinEmpleado,
													   @idPersona,
													   @idtipoEmpleado,
													   @idCarrera,
													   @idcargo,
													   @idContrato
													   )

	INSERT INTO ProyectoSistemaMatricula.unah.Direccion(idDireccion,
														idMunicipio,
														idDepartamento,
														descripcion
														)
												 VALUES(@idDireccion,
														@idMunicipio,
														@idDepartamento,
														@descripcion
														)

	INSERT INTO ProyectoSistemaMatricula.unah.Correo(idCorreo,
													 correoPersonal,
													 correoInstitucional)
											  VALUES(@idCorreo,
													 @correoPersonal,
													 @correoInstitucional
													 )

	INSERT INTO ProyectoSistemaMatricula.unah.Referencia(idReferencia,
														 nombreCompleto,
														 numeroTelefono,
														 idParentesco)
												  VALUES(@idReferencia,
														 @nombreCompleto,
														 @numeroTelefono,
														 @idParentesco)
END TRY
BEGIN CATCH
	PRINT 'No se pudo registrar'
END CATCH

GO
