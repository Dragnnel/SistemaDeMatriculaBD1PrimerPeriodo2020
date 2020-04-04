print 'Proyecto Sistema de matricula de la UNAH BD 1'
/*
	Hola
*/

CREATE DATABASE ProyectoSistemaMatricula;

CREATE SCHEMA unah;


/*
	Datos Demograficos
*/

CREATE TABLE ProyectoSistemaMatricula.unah.Continente(idContinente INT PRIMARY KEY NOT NULL,
						continente VARCHAR(45)
						);

CREATE TABLE ProyectoSistemaMatricula.unah.Pais(idPais INT PRIMARY KEY NOT NULL,
				  pais VARCHAR(45),
				  idContinente INT,
				  FOREIGN KEY(idContinente) REFERENCES ProyectoSistemaMatricula.unah.Continente(idContinente)
				  );

CREATE TABLE ProyectoSistemaMatricula.unah.Departamento(idDepartamento INT PRIMARY KEY NOT NULL,
						  departamento VARCHAR(45),
						  idPais INT,
						  FOREIGN KEY(idPais) REFERENCES ProyectoSistemaMatricula.unah.Pais(idPais)
						  );

CREATE TABLE ProyectoSistemaMatricula.unah.Municipio(idMunicipio INT PRIMARY KEY NOT NULL,
					   municipio VARCHAR(45),
					   idDepartamento INT,
					   FOREIGN KEY(idDepartamento) REFERENCES ProyectoSistemaMatricula.unah.Departamento(idDepartamento)
					   );

CREATE TABLE ProyectoSistemaMatricula.unah.Direccion(idDireccion INT PRIMARY KEY NOT NULL,
					   idMucicipio INT,
					   idDepartamento INT,
					   descripcion VARCHAR(300),
					   FOREIGN KEY(idMucicipio) REFERENCES ProyectoSistemaMatricula.unah.Municipio(idMunicipio),
					   FOREIGN KEY(idDepartamento) REFERENCES ProyectoSistemaMatricula.unah.Departamento(idDepartamento)
					   );

/*
	INFRAESTRUCTURA
*/

CREATE TABLE ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro INT PRIMARY KEY NOT NULL,
								 centroUniversitario VARCHAR(70),
								 sigla VARCHAR(10),
								 fechaFundacion DATE,
								 idDireccion INT,
								 FOREIGN KEY(idDireccion) REFERENCES ProyectoSistemaMatricula.unah.Direccion(idDireccion)
								 );

CREATE TABLE ProyectoSistemaMatricula.unah.Edificio(idEdificio INT PRIMARY KEY NOT NULL,
					  edificio VARCHAR(45),
					  codigoEdificio VARCHAR(10),
					  fechaFundacion DATE,
					  observacion VARCHAR(45),
					  idCentroUniversitario INT,
					  FOREIGN KEY(idCentroUniversitario) REFERENCES ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro)
					  );

CREATE TABLE ProyectoSistemaMatricula.unah.Aula(idAula INT PRIMARY KEY NOT NULL,
				  codigoAula VARCHAR(10),
				  cantidadMaximaDeEstudiante INT,
				  observacion VARCHAR(45),
				  idEdificio INT,
				  FOREIGN KEY(idEdificio) REFERENCES ProyectoSistemaMatricula.unah.Edificio(idEdificio)
				  );

CREATE TABLE ProyectoSistemaMatricula.unah.Facultad(idFacultad INT PRIMARY KEY NOT NULL,
					  facultad VARCHAR(50),
					  idEdificio INT,
					  idCentroUniversitario INT,
					  FOREIGN KEY(idEdificio) REFERENCES ProyectoSistemaMatricula.unah.Edificio(idEdificio),
					  FOREIGN KEY(idCentroUniversitario) REFERENCES ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro)
					  );

/*
	DATOS PERSONALES
*/
CREATE TABLE ProyectoSistemaMatricula.unah.GruposEtnico(idGrupoEtnico INT PRIMARY KEY NOT NULL,
						  descripcion VARCHAR(15)
						  );

CREATE TABLE ProyectoSistemaMatricula.unah.TipoDiscapacidad(idDiscapacidad INT PRIMARY KEY NOT NULL,
							  descripcion VARCHAR(15)
							  );

CREATE TABLE ProyectoSistemaMatricula.unah.Nacionalidad(idNacionalidad INT PRIMARY KEY NOT NULL,
						  descripcion VARCHAR(45)
						  );

CREATE TABLE ProyectoSistemaMatricula.unah.EstadoCivil(idEstado INT PRIMARY KEY NOT NULL,
						 descripcion VARCHAR(15)
						 );

CREATE TABLE ProyectoSistemaMatricula.unah.Sexo(idSexo INT PRIMARY KEY NOT NULL,
				  descripcion VARCHAR(15)
				  );

CREATE TABLE ProyectoSistemaMatricula.unah.Parentesco(idParentesco INT PRIMARY KEY NOT NULL,
						descripcion VARCHAR(45)
						);

CREATE TABLE ProyectoSistemaMatricula.unah.Referencia(idReferencia INT PRIMARY KEY NOT NULL,
						nombreCompleto VARCHAR(100),
						idParentesco INT,
						FOREIGN KEY(idParentesco) REFERENCES ProyectoSistemaMatricula.unah.Parentesco(idParentesco)
						);

CREATE TABLE ProyectoSistemaMatricula.unah.Correo(idCorreo INT PRIMARY KEY NOT NULL,
					correoPersonal VARCHAR(45),
					correoInstitucional VARCHAR(45)
					);

CREATE TABLE ProyectoSistemaMatricula.unah.Persona(idPersona VARCHAR(15) PRIMARY KEY NOT NULL, --Teniendo esto por numero de identidad
					 primerNombre VARCHAR(35),
					 segundoNombre VARCHAR(35),
					 primerApellido VARCHAR(35),
					 segundoApellido VARCHAR(35),
					 fechaNacimiento DATE,
					 idDireccion INT,
					 idNacionalidad INT,
					 idGrupoEtnico INT,
					 idSexo INT,
					 idDiscapacidad INT,
					 idEstadoCivil INT,
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

CREATE TABLE ProyectoSistemaMatricula.unah.Telefono(idTelefono INT PRIMARY KEY NOT NULL,
					  telefono VARCHAR(15),
					  idPersona VARCHAR(15),
					  idReferencia INT,
					  FOREIGN KEY(idPersona) REFERENCES ProyectoSistemaMatricula.unah.Persona(idPersona),
					  FOREIGN KEY(idReferencia) REFERENCES ProyectoSistemaMatricula.unah.Referencia(idReferencia)
					  );

/*
	EMPLEADO
*/
CREATE TABLE ProyectoSistemaMatricula.unah.TipoEmpleado(idTipoEmpleado INT PRIMARY KEY NOT NULL,
						  descripcion VARCHAR(50)
						  );

CREATE TABLE ProyectoSistemaMatricula.unah.Cargo(idCargo INT PRIMARY KEY NOT NULL,
				   tipoCargo VARCHAR(45)
				   );

CREATE TABLE ProyectoSistemaMatricula.unah.Contrato(idContrato INT PRIMARY KEY NOT NULL,
					  descripcion VARCHAR(45)
					  );


CREATE TABLE ProyectoSistemaMatricula.unah.PlanEstudio(idPlanEstudio INT PRIMARY KEY NOT NULL,
						 nombre VARCHAR(80),
						 duracionCarrera VARCHAR(25),
						 totalUV INT,
						 fechaRevision DATE
						 );


CREATE TABLE ProyectoSistemaMatricula.unah.Carrera(idCarrera INT PRIMARY KEY NOT NULL,
					 nombreCarrera VARCHAR(100),
					 requisitoIngreso INT,
					 fechaCreacion DATE,
					 idFacultad INT,
					 idPlanEstudio INT,
					 FOREIGN KEY(idFacultad) REFERENCES ProyectoSistemaMatricula.unah.Facultad(idFacultad),
					 FOREIGN KEY(idPlanEstudio) REFERENCES ProyectoSistemaMatricula.unah.PlanEstudio(idPlanEstudio)
					 );


CREATE TABLE ProyectoSistemaMatricula.unah.DepartamentoCarrera(idDeptoCarrera INT PRIMARY KEY NOT NULL,
								 FOREIGN KEY(idDeptoCarrera) REFERENCES ProyectoSistemaMatricula.unah.Carrera(idCarrera)						
									);


CREATE TABLE ProyectoSistemaMatricula.unah.Empleado(idEmpleado INT NOT NULL,
					  fechaInicioEmpleado DATE NOT NULL,
					  fechaFinEmpleado DATE,
					  idPersona VARCHAR(15),
					  idtipoEmpleado INT,
					  idDepartamento INT,
					  idcargo INT,
					  idContrato INT,
					  PRIMARY KEY(idEmpleado,fechaInicioEmpleado),
					  FOREIGN KEY(idPersona) REFERENCES ProyectoSistemaMatricula.unah.Persona(idPersona),
					  FOREIGN KEY(idDepartamento) REFERENCES ProyectoSistemaMatricula.unah.DepartamentoCarrera(idDeptoCarrera),
					  FOREIGN KEY(idTipoEmpleado) REFERENCES ProyectoSistemaMatricula.unah.TipoEmpleado(idTipoEmpleado),
					  FOREIGN KEY(idCargo) REFERENCES ProyectoSistemaMatricula.unah.Cargo(idCargo),
					  FOREIGN KEY(idContrato) REFERENCES ProyectoSistemaMatricula.unah.Contrato(idContrato)
					  );

CREATE TABLE ProyectoSistemaMatricula.unah.JefeDepartamento(idJefeDepartamento INT NOT NULL,
							  fechaInicioCargo DATE,
							  fechaInicioEmpleado DATE,
							  fechaFinCargo DATE,
							  PRIMARY KEY(idJefeDepartamento, fechaInicioCargo),
							  FOREIGN KEY(idJefeDepartamento,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado)
							  );

CREATE TABLE ProyectoSistemaMatricula.unah.CoordinadorDepartamento(idCoordinadorDepto INT NOT NULL,
									 fechaInicioEmpleado DATE,
									 fechaInicioCargo DATE,
									 fechaFinCargo DATE,
									 PRIMARY KEY(idCoordinadorDepto, fechaInicioCargo),
									 FOREIGN KEY(idCoordinadorDepto,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado)
									 );


CREATE TABLE ProyectoSistemaMatricula.unah.Decano(idDecano INT NOT NULL,
					fechaInicioCargo DATE,
					fechaInicioEmpleado DATE,
					fechaFinCargo DATE,
					PRIMARY KEY(idDecano, fechaInicioCargo),
					FOREIGN KEY(idDecano,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado),
					idFacultad INT,
					FOREIGN KEY(idFacultad) REFERENCES ProyectoSistemaMatricula.unah.Facultad(idFacultad)
					);


CREATE TABLE ProyectoSistemaMatricula.unah.GradoAcademico(idGradoAcademico INT PRIMARY KEY NOT NULL,
							tituloObtenido VARCHAR(50),
							nombreInstitucion VARCHAR(45),
							fechaAdquisicion DATE,
							idEmpleado INT,
							fechaInicioEmpleado DATE,
							idPais INT,
							FOREIGN KEY(idEmpleado,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado),
							FOREIGN KEY(idPais) REFERENCES ProyectoSistemaMatricula.unah.Pais(idPais)
							);

CREATE TABLE ProyectoSistemaMatricula.unah.Instructor(idInstructor INT NOT NULL,
						idDepartamento INT,
						fechaInicioCargo DATE,
						fechaInicioEmpleado DATE,
						fechaFinCargo DATE,
						PRIMARY KEY(idInstructor, fechaInicioCargo),
						FOREIGN KEY(idInstructor,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado),
						FOREIGN KEY(idDepartamento) REFERENCES ProyectoSistemaMatricula.unah.DepartamentoCarrera(idDeptoCarrera)
						);

CREATE TABLE ProyectoSistemaMatricula.unah.Docente(idDocente INT NOT NULL,
					idDepartamento INT,
					fechaInicioCargo DATE,
					fechaInicioEmpleado DATE,
					fechaFinCargo DATE,
					PRIMARY KEY(idDocente, fechaInicioCargo),
					FOREIGN KEY(idDocente,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado),
			    	FOREIGN KEY(idDepartamento) REFERENCES ProyectoSistemaMatricula.unah.DepartamentoCarrera(idDeptoCarrera)
							 );


CREATE TABLE ProyectoSistemaMatricula.unah.TipoPeriodo(idTipoPeriodo INT PRIMARY KEY NOT NULL,
						 descripcion VARCHAR(15)
						 );

CREATE TABLE ProyectoSistemaMatricula.unah.Asignatura(idAsignatura INT PRIMARY KEY NOT NULL,
						codigoAsignatura VARCHAR(15),
						nombreAsignatura VARCHAR(45),
						unidadesValorativas INT,
						examenUnificado BIT,
						poseeLaboratorio BIT,
						idTipoPeriodo INT,
					    FOREIGN KEY(idTipoPeriodo) REFERENCES ProyectoSistemaMatricula.unah.TipoPeriodo(idTipoPeriodo)
					    );


CREATE TABLE ProyectoSistemaMatricula.unah.CoordinadorAsignatura(idCoordinadorAsignatura INT NOT NULL,
									fechaInicioCargo DATE,
									fechaInicioEmpleado DATE,
									fechaFinCargo DATE,
								    idAsignatura INT,
								   PRIMARY KEY(idCoordinadorAsignatura,fechaInicioCargo),
								   FOREIGN KEY(idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura),
								   FOREIGN KEY(idCoordinadorAsignatura,fechaInicioEmpleado) REFERENCES ProyectoSistemaMatricula.unah.Empleado(idEmpleado,fechaInicioEmpleado)
								   );


/* Estudiantes */
CREATE TABLE ProyectoSistemaMatricula.unah.NotaExamenAptitud(idNotaAptitud INT PRIMARY KEY NOT NULL,
							   notaPaa INT NOT NULL,
							   notaPam INT,
							   notaPccns INT
							   );

CREATE TABLE ProyectoSistemaMatricula.unah.Periodo(idPeriodo INT PRIMARY KEY NOT NULL,
					fechaInicio DATE,
					fechaFinalizacion DATE,
					anio INT,
					idTipoPeriodo INT,
					FOREIGN KEY(idTipoPeriodo) REFERENCES ProyectoSistemaMatricula.unah.TipoPeriodo(idTipoPeriodo)
					);

CREATE TABLE ProyectoSistemaMatricula.unah.tipoSeccion (
							idTipoSeccion INT PRIMARY KEY,
							tipo VARCHAR (25)
							);

CREATE TABLE ProyectoSistemaMatricula.unah.Seccion(idSeccion INT PRIMARY KEY NOT NULL,
                     horaInicial INT,
					 horaFinal INT,
					 observaciones VARCHAR(45),
					 cuposDisponibles INT,
					 idTipoSeccion INT,
					 idDocente INT,
					 fechaInicioCargo DATE,
					 idAsignatura INT,
					 idAula INT,
					 idEdificio INT,
					 idPeriodo INT,
					 FOREIGN KEY(idDocente,fechaInicioCargo) REFERENCES ProyectoSistemaMatricula.unah.Docente(idDocente,fechaInicioCargo),
					 FOREIGN KEY(idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura),
					  FOREIGN KEY(idTipoSeccion) REFERENCES ProyectoSistemaMatricula.unah.tipoSeccion(idTipoSeccion),
					 FOREIGN KEY(idAula) REFERENCES ProyectoSistemaMatricula.unah.Aula(idAula),
					 FOREIGN KEY(idEdificio) REFERENCES ProyectoSistemaMatricula.unah.Edificio(idEdificio),
					 FOREIGN KEY(idPeriodo) REFERENCES ProyectoSistemaMatricula.unah.Periodo(idPeriodo),
					 ); 


CREATE TABLE ProyectoSistemaMatricula.unah.Estudiante(idEstudiante INT PRIMARY KEY NOT NULL,
						perteneceDeportes BIT,
						contrasenia VARCHAR(45),
						idCentro INT,
						idNotaAptitud INT,
						idDeptoCarrera INT,
						idpersona VARCHAR(15),
						cursoCursoModalidaDeClasesVirtuales BIT,
						cursoCursoIntroduccionVidaUniversitaria BIT,
						FOREIGN KEY(idCentro) REFERENCES ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro),
						FOREIGN KEY(idNotaAptitud) REFERENCES ProyectoSistemaMatricula.unah.NotaExamenAPtitud(idNotaAptitud),
						FOREIGN KEY(idDeptoCarrera) REFERENCES ProyectoSistemaMatricula.unah.DepartamentoCarrera(idDeptoCarrera),
						FOREIGN KEY(idPersona) REFERENCES ProyectoSistemaMatricula.unah.Persona(idPersona),
						);

CREATE TABLE ProyectoSistemaMatricula.unah.HistorialAcademico(idHistorial INT PRIMARY KEY NOT NULL,
								indicePeriodo INT,
								indiceGlobal INT,
								idEstudiante INT,
								FOREIGN KEY(idEstudiante) REFERENCES ProyectoSistemaMatricula.unah.Estudiante(idEstudiante),
								);

CREATE TABLE ProyectoSistemaMatricula.unah.Matricula(idMatricula INT PRIMARY KEY NOT NULL,
					   confirmacionPago BIT,
					   fechaInicio DATE,
					   fechaFin DATE,
					   idPeriodo INT,
					   idEstudiante INT,
					   idHistorial INT,
					   FOREIGN KEY(idPeriodo) REFERENCES ProyectoSistemaMatricula.unah.Periodo(idPeriodo),
					   FOREIGN KEY(idEstudiante) REFERENCES ProyectoSistemaMatricula.unah.Estudiante(idEstudiante),
					   FOREIGN KEY(idHistorial) REFERENCES ProyectoSistemaMatricula.unah.HistorialAcademico(idHistorial)
					   );


CREATE TABLE ProyectoSistemaMatricula.unah.ObservacionNotaFinal(
					   idObservacionNotaFinal INT PRIMARY KEY NOT NULL,
					   descripcion VARCHAR(20)
					   );
					    
CREATE TABLE ProyectoSistemaMatricula.unah.SeccionMatricula(
							  idMatricula INT,
							  idSeccion INT,
							  notaFinal DECIMAL (2,2),
							  idObservacionNota INT,
							  PRIMARY KEY (idMatricula ,idSeccion),
							  FOREIGN KEY(idMatricula) REFERENCES ProyectoSistemaMatricula.unah.Matricula(idMatricula),
							  FOREIGN KEY(idSeccion) REFERENCES ProyectoSistemaMatricula.unah.Seccion(idSeccion),
							  FOREIGN KEY(idObservacionNota) REFERENCES ProyectoSistemaMatricula.unah.ObservacionNotaFinal(idObservacionNotaFinal)
							  );



CREATE TABLE ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura INT  NOT NULL,
							 idPlanEstudio INT NOT NULL,
							 PRIMARY KEY(idAsignatura,idPlanEstudio),
							 FOREIGN KEY(idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura),
							 FOREIGN KEY(idPlanEstudio) REFERENCES ProyectoSistemaMatricula.unah.PlanEstudio(idPlanEstudio)
							 );

CREATE TABLE ProyectoSistemaMatricula.unah.Requisitos(idAsignatura INT NOT NULL,
						idPlanEstudio INT NOT NULL,  /* DUDAS no se si dejaarla como lo tenemos en word o en lo otro*/
						idRequisito1 INT,
						idRequisito2 INT,
						PRIMARY KEY(idAsignatura,idPlanEstudio),
					    FOREIGN KEY(idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura),
					    FOREIGN KEY(idPlanEstudio) REFERENCES ProyectoSistemaMatricula.unah.PlanEstudio(idPlanEstudio),
						FOREIGN KEY(idRequisito1) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura),
						FOREIGN KEY(idRequisito2) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura)
					    );



CREATE TABLE ProyectoSistemaMatricula.unah.HorarioDocente (idHorario INT,
					  idDocente INT, 
					  idPeriodo INT,
					  idFechaInicioDocente DATE,
					  HoraInicio INT,
					  HoraFin	INT,
					  PRIMARY KEY (idHorario,idDocente,idPeriodo),
					  FOREIGN KEY(idDocente, idFechaInicioDocente) REFERENCES ProyectoSistemaMatricula.unah.Docente(idDocente,fechaInicioCargo)
						);

CREATE TABLE ProyectoSistemaMatricula.unah.HorarioInstructor (idHorario INT,
					  idInstructor INT, 
					  idPeriodo INT,
					  idFechaInicioInstructor DATE,
					  HoraInicio INT,
					  HoraFin	INT,
					  PRIMARY KEY (idHorario,idInstructor,idPeriodo),
					  FOREIGN KEY(idInstructor, idFechaInicioInstructor) REFERENCES ProyectoSistemaMatricula.unah.Instructor(idInstructor,fechaInicioCargo)
						);

