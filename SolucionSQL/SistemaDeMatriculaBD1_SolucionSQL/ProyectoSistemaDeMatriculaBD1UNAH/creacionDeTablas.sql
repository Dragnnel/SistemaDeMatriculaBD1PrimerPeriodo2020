print 'Proyecto Sistema de matricula de la UNAH BD 1'

CREATE DATABASE ProyectoSistemaMatricula;

CREATE SCHEMA unah;

 
/*
	Datos Demograficos  
*/

CREATE TABLE ProyectoSistemaMatricula.unah.Continente (
														idContinente INT PRIMARY KEY,
														continente VARCHAR(45)
														);

CREATE TABLE ProyectoSistemaMatricula.unah.Pais (
												  codigoPais VARCHAR(6)  PRIMARY KEY,
												  pais VARCHAR(45),
												  idContinente INT,
												  FOREIGN KEY(idContinente) REFERENCES ProyectoSistemaMatricula.unah.Continente(idContinente)
												  );

CREATE TABLE ProyectoSistemaMatricula.unah.Departamento(
														  idDepartamento INT PRIMARY KEY,
														  departamento VARCHAR(45),
														  codigoPais VARCHAR(6),
														  FOREIGN KEY(codigoPais) REFERENCES ProyectoSistemaMatricula.unah.Pais(codigoPais)
														  );

CREATE TABLE ProyectoSistemaMatricula.unah.Municipio(
													   idMunicipio INT PRIMARY KEY,
													   municipio VARCHAR(45),
													   idDepartamento INT,
													   FOREIGN KEY(idDepartamento) REFERENCES ProyectoSistemaMatricula.unah.Departamento(idDepartamento)
													   );

CREATE TABLE ProyectoSistemaMatricula.unah.Direccion(
													   idDireccion INT PRIMARY KEY,
													   idMunicipio INT,
													   idDepartamento INT,
													   descripcion VARCHAR(300),
													   FOREIGN KEY(idMunicipio) REFERENCES ProyectoSistemaMatricula.unah.Municipio(idMunicipio),
													   FOREIGN KEY(idDepartamento) REFERENCES ProyectoSistemaMatricula.unah.Departamento(idDepartamento)
													   );

/*
	INFRAESTRUCTURA
*/

CREATE TABLE ProyectoSistemaMatricula.unah.CentroUniversitario(
																 idCentro INT PRIMARY KEY,
																 centroUniversitario VARCHAR(70),
																 sigla VARCHAR(10),
																 fechaFundacion DATE,
																 idDireccion INT,
																 FOREIGN KEY(idDireccion) REFERENCES ProyectoSistemaMatricula.unah.Direccion(idDireccion)
																 );

CREATE TABLE ProyectoSistemaMatricula.unah.Edificio(
													  idCodigoEdificio VARCHAR(15) PRIMARY KEY,
													  edificio VARCHAR(45),
													  fechaFundacion DATE,
													  observacion VARCHAR(45),
													  idCentroUniversitario INT,
													  FOREIGN KEY(idCentroUniversitario) REFERENCES ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro)
													  );

CREATE TABLE ProyectoSistemaMatricula.unah.Aula(
												  idCodigoAula VARCHAR(15),
												  idCodigoEdificio VARCHAR(15),
												  cantidadMaximaDeEstudiante INT,
												  observacion VARCHAR(45),
												  PRIMARY KEY(idCodigoAula,idCodigoEdificio),												  
												  FOREIGN KEY(idCodigoEdificio) REFERENCES ProyectoSistemaMatricula.unah.Edificio(idCodigoEdificio)
												  );

CREATE TABLE ProyectoSistemaMatricula.unah.Facultad(
													  idFacultad INT PRIMARY KEY,
													  facultad VARCHAR(50),
													  idEdificio VARCHAR(15),
													  idCentroUniversitario INT,
													  FOREIGN KEY(idEdificio) REFERENCES ProyectoSistemaMatricula.unah.Edificio(idCodigoEdificio),
													  FOREIGN KEY(idCentroUniversitario) REFERENCES ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro)
													  );

/*
	DATOS PERSONALES
*/
CREATE TABLE ProyectoSistemaMatricula.unah.GruposEtnico(
														  idGrupoEtnico INT PRIMARY KEY,
														  descripcion VARCHAR(15)
														  );

CREATE TABLE ProyectoSistemaMatricula.unah.TipoDiscapacidad(
															  idDiscapacidad INT PRIMARY KEY,
															  descripcion VARCHAR(15)
															  );

CREATE TABLE ProyectoSistemaMatricula.unah.Nacionalidad(
														  idNacionalidad INT PRIMARY KEY,
														  descripcion VARCHAR(45)
														  );

CREATE TABLE ProyectoSistemaMatricula.unah.EstadoCivil(
														 idEstado INT PRIMARY KEY,
														 descripcion VARCHAR(15)
														 );

CREATE TABLE ProyectoSistemaMatricula.unah.Sexo(
												  idSexo INT PRIMARY KEY,
												  descripcion VARCHAR(15)
												  );

CREATE TABLE ProyectoSistemaMatricula.unah.Parentesco(
														idParentesco INT PRIMARY KEY,
														descripcion VARCHAR(45)
														);

CREATE TABLE ProyectoSistemaMatricula.unah.Referencia(
														idReferencia INT PRIMARY KEY,
														nombreCompleto VARCHAR(100),
														numeroTelefono VARCHAR(15),
														idParentesco INT,
														FOREIGN KEY(idParentesco) REFERENCES ProyectoSistemaMatricula.unah.Parentesco(idParentesco)
														);

CREATE TABLE ProyectoSistemaMatricula.unah.Correo(
													idCorreo INT PRIMARY KEY,
													correoPersonal VARCHAR(45),
													correoInstitucional VARCHAR(45)
													);

CREATE TABLE ProyectoSistemaMatricula.unah.Persona(
													 idPersona VARCHAR(15) PRIMARY KEY, --Teniendo esto por numero de identidad, sin guiones
													 primerNombre VARCHAR(35),
													 segundoNombre VARCHAR(35),
													 primerApellido VARCHAR(35),
													 segundoApellido VARCHAR(35),
													 idNacionalidad INT,
													 idSexo INT,
													 idEstadoCivil INT,
													 fechaNacimiento DATE,
													 idGrupoEtnico INT,
													 idDiscapacidad INT,
													 idDireccion INT,
													 idCorreo INT,
													 idReferencia INT,
													 FOREIGN KEY(idDireccion) REFERENCES ProyectoSistemaMatricula.unah.Direccion(idDireccion),
													 FOREIGN KEY(idNacionalidad) REFERENCES ProyectoSistemaMatricula.unah.Nacionalidad(idNacionalidad),
													 FOREIGN KEY(idGrupoEtnico) REFERENCES ProyectoSistemaMatricula.unah.GruposEtnico(idGrupoEtnico),
													 FOREIGN KEY(idSexo) REFERENCES ProyectoSistemaMatricula.unah.Sexo(idSexo),
													 FOREIGN KEY(idDiscapacidad) REFERENCES ProyectoSistemaMatricula.unah.TipoDiscapacidad(idDiscapacidad),
													 FOREIGN KEY(idEstadoCivil) REFERENCES ProyectoSistemaMatricula.unah.EstadoCivil(idEstado),
													 FOREIGN KEY(idCorreo) REFERENCES ProyectoSistemaMatricula.unah.Correo(idCorreo),
													 FOREIGN KEY(idReferencia) REFERENCES ProyectoSistemaMatricula.unah.Referencia(idReferencia)
													 );

CREATE TABLE ProyectoSistemaMatricula.unah.Telefono(
													  idTelefono INT PRIMARY KEY,
													  telefono VARCHAR(15),
													  idPersona VARCHAR(15),
													  FOREIGN KEY(idPersona) REFERENCES ProyectoSistemaMatricula.unah.Persona(idPersona),
													);

/*
	EMPLEADO
*/
CREATE TABLE ProyectoSistemaMatricula.unah.TipoEmpleado(
														  idTipoEmpleado INT PRIMARY KEY,
														  descripcion VARCHAR(50)
														  );

CREATE TABLE ProyectoSistemaMatricula.unah.Cargo(
												   idCargo INT PRIMARY KEY,
												   tipoCargo VARCHAR(45)
												   );

CREATE TABLE ProyectoSistemaMatricula.unah.Contrato(
													  idContrato INT PRIMARY KEY,
													  descripcion VARCHAR(45)
													  );


CREATE TABLE ProyectoSistemaMatricula.unah.PlanEstudio(
														 idPlanEstudio INT PRIMARY KEY,
														 nombre VARCHAR(80),
														 duracionCarrera VARCHAR(25),
														 totalUV INT,
														 fechaRevision DATE
														 );


CREATE TABLE ProyectoSistemaMatricula.unah.Carrera(
													 idCarrera INT PRIMARY KEY,
													 nombreCarrera VARCHAR(100),
													 requisitoIngreso INT,
													 fechaCreacion DATE,
													 idFacultad INT,
													 idPlanEstudio INT,
													 FOREIGN KEY(idFacultad) REFERENCES ProyectoSistemaMatricula.unah.Facultad(idFacultad),
													 FOREIGN KEY(idPlanEstudio) REFERENCES ProyectoSistemaMatricula.unah.PlanEstudio(idPlanEstudio)
													 );


CREATE TABLE ProyectoSistemaMatricula.unah.Empleado(
													  idEmpleado INT,
													  fechaInicioEmpleado DATE,
													  fechaFinEmpleado DATE,
													  idPersona VARCHAR(15),
													  idtipoEmpleado INT,
													  idCarrera INT,
													  idcargo INT,
													  idContrato INT,
													  PRIMARY KEY(idEmpleado,fechaInicioEmpleado),
													  FOREIGN KEY(idPersona) REFERENCES ProyectoSistemaMatricula.unah.Persona(idPersona),
													  FOREIGN KEY(idCarrera) REFERENCES ProyectoSistemaMatricula.unah.Carrera(idCarrera),
													  FOREIGN KEY(idTipoEmpleado) REFERENCES ProyectoSistemaMatricula.unah.TipoEmpleado(idTipoEmpleado),
													  FOREIGN KEY(idCargo) REFERENCES ProyectoSistemaMatricula.unah.Cargo(idCargo),
													  FOREIGN KEY(idContrato) REFERENCES ProyectoSistemaMatricula.unah.Contrato(idContrato)
													  );

CREATE TABLE ProyectoSistemaMatricula.unah.JefeDepartamento(
															  idJefeDepartamento INT, ---- es el id empleado
															  fechaInicioCargo DATE,
															  fechaInicioEmpleado DATE,
															  fechaFinCargo DATE,
															  idCarrera INT,
															  FOREIGN KEY(idCarrera) REFERENCES ProyectoSistemaMatricula.unah.Carrera(idCarrera),
															  PRIMARY KEY(idJefeDepartamento, fechaInicioCargo),
															  FOREIGN KEY(idJefeDepartamento,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado)
															  );


CREATE TABLE ProyectoSistemaMatricula.unah.CoordinadorDepartamento(
																	 idCoordinadorDepto INT,
																	 fechaInicioEmpleado DATE,
																	 fechaInicioCargo DATE,
																	 fechaFinCargo DATE,
																	 idCarrera INT,
															         FOREIGN KEY(idCarrera) REFERENCES ProyectoSistemaMatricula.unah.Carrera(idCarrera),
																	 PRIMARY KEY(idCoordinadorDepto, fechaInicioCargo),
																	 FOREIGN KEY(idCoordinadorDepto,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado)
																	 );



CREATE TABLE ProyectoSistemaMatricula.unah.Decano(
													idDecano INT,
													idFacultad INT,
													fechaInicioCargo DATE,
													fechaInicioEmpleado DATE,
													fechaFinCargo DATE,
													PRIMARY KEY(idDecano, fechaInicioCargo),
													FOREIGN KEY(idDecano,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado),
													FOREIGN KEY(idFacultad) REFERENCES ProyectoSistemaMatricula.unah.Facultad(idFacultad)
													);


CREATE TABLE ProyectoSistemaMatricula.unah.GradoAcademico(
															idGradoAcademico INT PRIMARY KEY,
															tituloObtenido VARCHAR(50),
															nombreInstitucion VARCHAR(45),
															codigoPais VARCHAR(6),
															fechaAdquisicion DATE,
															idEmpleado INT,
															fechaInicioEmpleado DATE,
															FOREIGN KEY(idEmpleado,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado),
															FOREIGN KEY(codigoPais) REFERENCES ProyectoSistemaMatricula.unah.Pais(codigoPais)
															);

CREATE TABLE ProyectoSistemaMatricula.unah.Instructor(
														idInstructor INT,
														fechaInicioCargo DATE,
														fechaInicioEmpleado DATE,
														fechaFinCargo DATE,
														horaInicio TIME,
														horaFin TIME,
														idCarrera INT,
														PRIMARY KEY(idInstructor, fechaInicioCargo),
													    FOREIGN KEY(idCarrera) REFERENCES ProyectoSistemaMatricula.unah.Carrera(idCarrera),
														FOREIGN KEY(idInstructor,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado),
														);


CREATE TABLE ProyectoSistemaMatricula.unah.Docente(
													idDocente INT NOT NULL,
													fechaInicioCargo DATE,
													fechaInicioEmpleado DATE,
													fechaFinCargo DATE,
													horaInicio TIME,
													horaFin TIME,
													idCarrera INT,
													PRIMARY KEY(idDocente, fechaInicioCargo),
												    FOREIGN KEY(idCarrera) REFERENCES ProyectoSistemaMatricula.unah.Carrera(idCarrera),
													FOREIGN KEY(idDocente,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado),
			    								 );



CREATE TABLE ProyectoSistemaMatricula.unah.TipoPeriodo(
														 idTipoPeriodo INT PRIMARY KEY,
														 descripcion VARCHAR(15)
														 );

CREATE TABLE ProyectoSistemaMatricula.unah.Asignatura(
														idAsignatura VARCHAR(15) PRIMARY KEY, ---codigoAsignatura
														nombreAsignatura VARCHAR(45),
														unidadesValorativas INT,
														examenUnificado BIT,
														poseeLaboratorio BIT,
														idTipoPeriodo INT,
														FOREIGN KEY(idTipoPeriodo) REFERENCES ProyectoSistemaMatricula.unah.TipoPeriodo(idTipoPeriodo)
														);

CREATE TABLE ProyectoSistemaMatricula.unah.CoordinadorAsignatura(
																   idCoordinadorAsignatura INT,
																   fechaInicioCargo DATE,
																   fechaInicioEmpleado DATE,
																   fechaFinCargo DATE,
																   idAsignatura  VARCHAR(15),
																   PRIMARY KEY(idCoordinadorAsignatura,fechaInicioCargo),
																   FOREIGN KEY(idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura),
																   FOREIGN KEY(idCoordinadorAsignatura,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado)
																   );


/* Estudiantes */
CREATE TABLE ProyectoSistemaMatricula.unah.NotaExamenAptitud(
															   idNotaAptitud INT PRIMARY KEY,
															   notaPaa INT NOT NULL,
															   notaPam INT,
															   notaPccns INT
															   );


CREATE TABLE ProyectoSistemaMatricula.unah.Periodo( 
													idPeriodo CHAR(3),
													fechaInicio DATE,
													idTipoPeriodo INT,
													fechaFinalizacion DATE,
													anio INT,
													PRIMARY KEY(idPeriodo,fechaInicio,idTipoPeriodo),
													FOREIGN KEY(idTipoPeriodo) REFERENCES ProyectoSistemaMatricula.unah.TipoPeriodo(idTipoPeriodo)
													);

CREATE TABLE ProyectoSistemaMatricula.unah.TipoSeccion (
														idTipoSeccion INT PRIMARY KEY,
														tipo VARCHAR (25)
														);
CREATE TABLE ProyectoSistemaMatricula.unah.Dias (
													idDias INT PRIMARY KEY ,
													descripcionDias VARCHAR(25)
													);

CREATE TABLE ProyectoSistemaMatricula.unah.Seccion(
													 idSeccion INT NOT NULL,
													 horaInicial INT,
													 horaFinal INT,
													 idDias INT,
													 observaciones VARCHAR(45),
													 cuposDisponibles INT,
													 idTipoSeccion INT,
													 idDocente INT,
													 fechaInicioCargo DATE,
													 idAsignatura  VARCHAR(15),
													 idCodigoAula VARCHAR(15),
													 idCodigoEdificio VARCHAR(15),
													 idPeriodo CHAR(3),
													 fechaInicioPeriodo DATE,
													 idTipoPeriodo INT,
													 PRIMARY KEY(idSeccion, idAsignatura),
													 FOREIGN KEY(idDocente,fechaInicioCargo) REFERENCES ProyectoSistemaMatricula.unah.Docente(idDocente,fechaInicioCargo),
													 FOREIGN KEY(idDias) REFERENCES ProyectoSistemaMatricula.unah.Dias(idDias),
													 FOREIGN KEY(idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura),
													 FOREIGN KEY(idTipoSeccion) REFERENCES ProyectoSistemaMatricula.unah.tipoSeccion(idTipoSeccion),
													 FOREIGN KEY(idCodigoAula,idCodigoEdificio) REFERENCES ProyectoSistemaMatricula.unah.Aula(idCodigoAula,idCodigoEdificio),
													 FOREIGN KEY(idPeriodo,fechaInicioPeriodo,idTipoPeriodo) REFERENCES ProyectoSistemaMatricula.unah.Periodo(idPeriodo,fechaInicio,idTipoPeriodo)
													 ); 


CREATE TABLE ProyectoSistemaMatricula.unah.Estudiante(
														idEstudiante INT PRIMARY KEY NOT NULL,
														perteneceDeportes BIT,
														uvDisponibles INT,
														contrasenia VARCHAR(45),
														idCentro INT,
														idNotaAptitud INT,
														idPersona VARCHAR(15),
														cursoCursoModalidaDeClasesVirtuales BIT,
														cursoCursoIntroduccionVidaUniversitaria BIT,
														idCarrera INT,
														FOREIGN KEY(idCarrera) REFERENCES ProyectoSistemaMatricula.unah.Carrera(idCarrera),
														FOREIGN KEY(idCentro) REFERENCES ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro),
														FOREIGN KEY(idNotaAptitud) REFERENCES ProyectoSistemaMatricula.unah.NotaExamenAPtitud(idNotaAptitud),
														FOREIGN KEY(idPersona) REFERENCES ProyectoSistemaMatricula.unah.Persona(idPersona),
														);

CREATE TABLE ProyectoSistemaMatricula.unah.HistorialAcademico(
																idHistorial INT PRIMARY KEY NOT NULL,
																indicePeriodo INT,
																indiceGlobal INT,
																idEstudiante INT,
																FOREIGN KEY(idEstudiante) REFERENCES ProyectoSistemaMatricula.unah.Estudiante(idEstudiante),
																);
/*
CREATE TABLE ProyectoSistemaMatricula.unah.HistorialAcademico(
																idHistorial INT,
																--indicePeriodo INT,
																--indiceGlobal INT,
																--idEstudiante INT,

																idAsignatura VARCHAR(15),
																nombreAsignatura VARCHAR(45),
																unidadesValorativas INT,
																idseccion INT,
																anio INT,
																periodo CHAR(3),
																calificaion decimal(2,2),
																obs CHAR(3)
																PRIMARY KEY(idHistorial,idAsignatura, anio, periodo, obs)
																--FOREIGN KEY(idEstudiante) REFERENCES ProyectoSistemaMatricula.unah.Estudiante(idEstudiante),
																FOREIGN KEY(idseccion,idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Seccion(idSeccion, idAsignatura)
																);
*/
CREATE TABLE ProyectoSistemaMatricula.unah.Matricula(
													   idMatricula INT PRIMARY KEY NOT NULL,
													   confirmacionPago BIT,
													   fechaInicio DATE,
													   fechaFin DATE,
													   idPeriodo CHAR (3),
													   fechaInicioPeriodo DATE,
													   idTipoPeriodo INT,
													   idEstudiante INT,
													   idHistorial INT,
													   FOREIGN KEY(idPeriodo,fechaInicioPeriodo,idTipoPeriodo) REFERENCES ProyectoSistemaMatricula.unah.Periodo(idPeriodo,fechaInicio,idTipoPeriodo),
													   FOREIGN KEY(idEstudiante) REFERENCES ProyectoSistemaMatricula.unah.Estudiante(idEstudiante),
													   FOREIGN KEY(idHistorial) REFERENCES ProyectoSistemaMatricula.unah.HistorialAcademico(idHistorial)
													   );

CREATE TABLE ProyectoSistemaMatricula.unah.ObservacionNotaFinal(
																   idObservacionNotaFinal CHAR(3) PRIMARY KEY NOT NULL,
																   descripcion VARCHAR(20)
																   );
					    
ALTER TABLE ProyectoSistemaMatricula.unah.SeccionMatricula (
															  idMatricula INT,
															  idAsignatura  VARCHAR(15),
															  idSeccion INT,
															  notaFinal DECIMAL (2,2),
															  idObservacionNota VARCHAR(3),
															  PRIMARY KEY (idMatricula ,idSeccion, idAsignatura),
															  FOREIGN KEY(idMatricula) REFERENCES ProyectoSistemaMatricula.unah.Matricula(idMatricula),
															  FOREIGN KEY(idSeccion, idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Seccion(idSeccion, idAsignatura),
															  FOREIGN KEY(idObservacionNota) REFERENCES ProyectoSistemaMatricula.unah.ObservacionNotaFinal(idObservacionNotaFinal)
															  );
					    
CREATE TABLE ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera(
															  idMatricula INT,
															  idSeccion INT,
															  idAsignatura  VARCHAR(15),
															  fechaLimite DATE,
															  PRIMARY KEY (idMatricula ,idSeccion, idAsignatura),
															  FOREIGN KEY(idMatricula) REFERENCES ProyectoSistemaMatricula.unah.Matricula(idMatricula),
															  FOREIGN KEY(idSeccion, idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Seccion(idSeccion, idAsignatura),
															  );


CREATE TABLE ProyectoSistemaMatricula.unah.PensumAcademico(
															 idAsignatura  VARCHAR(15),
															 idPlanEstudio INT,
															 PRIMARY KEY(idAsignatura,idPlanEstudio),
															 FOREIGN KEY(idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura),
															 FOREIGN KEY(idPlanEstudio) REFERENCES ProyectoSistemaMatricula.unah.PlanEstudio(idPlanEstudio)
															 );

CREATE TABLE ProyectoSistemaMatricula.unah.Requisitos(
														idAsignatura  VARCHAR(15),
														idPlanEstudio INT,  
														idRequisito1  VARCHAR(15),
														idRequisito2  VARCHAR(15),
														PRIMARY KEY(idAsignatura,idPlanEstudio),
														FOREIGN KEY(idAsignatura,idPlanEstudio) REFERENCES ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio),
														FOREIGN KEY(idRequisito1) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura),
														FOREIGN KEY(idRequisito2) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura)
														);
