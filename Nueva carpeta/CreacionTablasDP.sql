
/*
	Datos Demograficos
*/

CREATE TABLE Continente(idContinente INT PRIMARY KEY NOT NULL,
						continente VARCHAR(45));

CREATE TABLE Pais(idPais INT PRIMARY KEY NOT NULL,
				  pais VARCHAR(45),
				  idContinente INT,
				  FOREIGN KEY(idContinente) REFERENCES Continente(idContinente));

CREATE TABLE Departamento(idDepartamento INT PRIMARY KEY NOT NULL,
						  departamento VARCHAR(45),
						  idPais INT,
						  FOREIGN KEY(idPais) REFERENCES Pais(idPais)
						  );

CREATE TABLE Municipio(idMunicipio INT PRIMARY KEY NOT NULL,
					   municipio VARCHAR(45),
					   idDepartamento INT,
					   FOREIGN KEY(idDepartamento) REFERENCES Departamento(idDepartamento)
					   )

CREATE TABLE Direccion(idDireccion INT PRIMARY KEY NOT NULL,
					   idMucicipio INT,
					   idDepartamento INT,
					   descripcion VARCHAR(300),
					   FOREIGN KEY(idMucicipio) REFERENCES Municipio(idMunicipio),
					   FOREIGN KEY(idDepartamento) REFERENCES Departamento(idDepartamento)
					   )

/*
	INFRAESTRUCTURA
*/

CREATE TABLE CentroUniversitario(idCentro INT PRIMARY KEY NOT NULL,
								 centroUniversitario VARCHAR(70),
								 sigla VARCHAR(10),
								 fechaFundacion DATE,
								 idDireccion INT,
								 FOREIGN KEY(idDireccion) REFERENCES Direccion(idDireccion)
								 );

CREATE TABLE Edificio(idEdificio INT PRIMARY KEY NOT NULL,
					  edificio VARCHAR(45),
					  codigoEdificio VARCHAR(10),
					  fechaFundacion DATE,
					  observacion VARCHAR(45),
					  idCentroUniversitario INT,
					  FOREIGN KEY(idCentroUniversitario) REFERENCES CentroUniversitario(idCentro)
					  );

CREATE TABLE Aula(idAula INT PRIMARY KEY NOT NULL,
				  codigoAula VARCHAR(10),
				  cantidadMaximaDeEstudiante INT,
				  observacion VARCHAR(45),
				  idEdificio INT,
				  FOREIGN KEY(idEdificio) REFERENCES Edificio(idEdificio)
				  );

CREATE TABLE Facultad(idFacultad INT PRIMARY KEY NOT NULL,
					  facultad VARCHAR(50),
					  idEdificio INT,
					  idCentroUniversitario INT,
					  FOREIGN KEY(idEdificio) REFERENCES Edificio(idEdificio),
					  FOREIGN KEY(idCentroUniversitario) REFERENCES CentroUniversitario(idCentro)
					  );

/*
	DATOS PERSONALES
*/
CREATE TABLE GruposEtnico(idGrupoEtnico INT PRIMARY KEY NOT NULL,
						  descripcion VARCHAR(15)
						  );

CREATE TABLE TipoDiscapacidad(idDiscapacidad INT PRIMARY KEY NOT NULL,
							  descripcion VARCHAR(15)
							  );

CREATE TABLE Nacionalidad(idNacionalidad INT PRIMARY KEY NOT NULL,
						  descripcion VARCHAR(45)
						  );

CREATE TABLE EstadoCivil(idEstado INT PRIMARY KEY NOT NULL,
						 descripcion VARCHAR(15)
						 );

CREATE TABLE Sexo(idSexo INT PRIMARY KEY NOT NULL,
				  descripcion VARCHAR(15)
				  );

CREATE TABLE Parentesco(idParentesco INT PRIMARY KEY NOT NULL,
						descripcion VARCHAR(45)
						);

CREATE TABLE Referencia(idReferencia INT PRIMARY KEY NOT NULL,
						nombreCompleto VARCHAR(100),
						idParentesco INT,
						FOREIGN KEY(idParentesco) REFERENCES Parentesco(idParentesco)
						);

CREATE TABLE Correo(idCorreo INT PRIMARY KEY NOT NULL,
					correoPersonal VARCHAR(45),
					correoInstitucional VARCHAR(45)
					);

CREATE TABLE Persona(idPersona VARCHAR(15) PRIMARY KEY NOT NULL, --Teniendo esto por numero de identidad
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
					 FOREIGN KEY(idDireccion) REFERENCES Direccion(idDireccion),
					 FOREIGN KEY(idNacionalidad) REFERENCES Nacionalidad(idNacionalidad),
					 FOREIGN KEY(idGrupoEtnico) REFERENCES GruposEtnico(idGrupoEtnico),
					 FOREIGN KEY(idSexo) REFERENCES Sexo(idSexo),
					 FOREIGN KEY(idDiscapacidad) REFERENCES TipoDiscapacidad(idDiscapacidad),
					 FOREIGN KEY(idEstadoCivil) REFERENCES EstadoCivil(idEstado),
					 FOREIGN KEY(idCorreo) REFERENCES Correo(idCorreo),
					 FOREIGN KEY(idReferencia) REFERENCES Referencia(idReferencia)
					 );

CREATE TABLE Telefono(idTelefono INT PRIMARY KEY NOT NULL,
					  telefono VARCHAR(15),
					  idPersona VARCHAR(15),
					  idReferencia INT,
					  FOREIGN KEY(idPersona) REFERENCES Persona(idPersona),
					  FOREIGN KEY(idReferencia) REFERENCES Referencia(idReferencia)
					  );

/*
	EMPLEADO
*/
CREATE TABLE TipoEmpleado(idTipoEmpleado INT PRIMARY KEY NOT NULL,
						  descripcion VARCHAR(50)
						  );

CREATE TABLE Cargo(idCargo INT PRIMARY KEY NOT NULL,
				   tipoCargo VARCHAR(45)
				   );

CREATE TABLE Contrato(idContrato INT PRIMARY KEY NOT NULL,
					  descripcion VARCHAR(45)
					  );


CREATE TABLE PlanEstudio(idPlanEstudio INT PRIMARY KEY NOT NULL,
						 nombre VARCHAR(80),
						 duracionCarrera VARCHAR(25),
						 totalUV INT,
						 fechaRevision DATE
						 );


CREATE TABLE Carrera(idCarrera INT PRIMARY KEY NOT NULL,
					 nombreCarrera VARCHAR(100),
					 requisitoIngreso INT,
					 fechaCreacion DATE,
					 idFacultad INT,
					 idPlanEstudio INT,
					 FOREIGN KEY(idFacultad) REFERENCES Facultad(idFacultad),
					 FOREIGN KEY(idPlanEstudio) REFERENCES PlanEstudio(idPlanEstudio)
					 );
--Observacion de 
CREATE TABLE Empleado(idEmpleado INT NOT NULL,
					  fechaInicio DATE NOT NULL,
					  fechaFin DATE,
					  idPersona VARCHAR(15),
					  idtipoEmpleado INT,
					  idDepartamento INT,
					  idcargo INT,
					  idContrato INT,
					  PRIMARY KEY(idEmpleado,fechaInicio),
					  FOREIGN KEY(idPersona) REFERENCES Persona(idPersona),
					  FOREIGN KEY(idDepartamento) REFERENCES DepartamentoCarrera(idDepartamento), ----------------------------------------------
					  FOREIGN KEY(idTipoEmpleado) REFERENCES TipoEmpleado(idTipoEmpleado),
					  FOREIGN KEY(idCargo) REFERENCES Cargo(idCargo),
					  FOREIGN KEY(idContrato) REFERENCES Contrato(idContrato)
					  );

CREATE TABLE JefeDepartamento(idJefeDepto INT NOT NULL,
							  fechaInicio DATE,
							  fechaFin DATE,
							  idEmpleado INT
							  PRIMARY KEY(idJefeDepto, fechaInicio),
							  FOREIGN KEY(idEmpleado,fechaInicio) REFERENCES Empleado(idEmpleado,fechaInicio)
							  );

CREATE TABLE CoordinadorDepartamento(idCoordinadorDepto INT NOT NULL,
									 fechaInicio DATE,
									 fechaFin DATE,
									 idEmpleado INT,
									 PRIMARY KEY(idCoordinadorDepto, fechaInicio),
									 FOREIGN KEY(idEmpleado) REFERENCES Empleado(idEmpleado)
									 );


CREATE TABLE DepartamentoCarrera(idDeptoCarrera INT PRIMARY KEY NOT NULL,
								 idCarrera INT,
								idJefeDepto INT,
								 idCoordinadorDepto INT,
								 FOREIGN KEY(idCarrera) REFERENCES Carrera(idCarrera),
								 FOREIGN KEY(idJefeDepto) REFERENCES JefeDepartamento(idJefeDepto),
								 FOREIGN KEY(idCoordinadorDepto) REFERENCES CoordinadorDepartamento(idCoordinadorDepto)
								 );



CREATE TABLE Decano(idDecano INT NOT NULL,
					fechaInicio DATE,
					fechaFin DATE,
					idEmpleado INT,
					idFacultad INT,
					PRIMARY KEY(idDecano, fechaInicio),
					FOREIGN KEY(idEmpleado) REFERENCES Empleado(idEmpleado),
					FOREIGN KEY(idFacultad) REFERENCES Facultad(idFacultad)
					);




CREATE TABLE GradoAcademico(idGradoAcademico INT PRIMARY KEY NOT NULL,
							tituloObtenido VARCHAR(50),
							nombreInstitucion VARCHAR(45),
							fechaAdquisicion DATE,
							idEmpleado INT,
							idPais INT
							FOREIGN KEY(idEmpleado) REFERENCES Empleado(idEmpleado),
							FOREIGN KEY(idPais) REFERENCES Pais(idPais)
							);

CREATE TABLE Instructor(idInstructor INT PRIMARY KEY NOT NULL,
						idEmpleado INT,
						FOREIGN KEY(idEmpleado) REFERENCES Empleado(idEmpleado)
						);

CREATE TABLE Docente(idDocente INT PRIMARY KEY NOT NULL,
					 idEmpleado INT,
					 idDepartamento INT,
					 FOREIGN KEY(idEmpleado) REFERENCES Empleado(idEmpleado),
					 FOREIGN KEY(idDepartamento) REFERENCES DepartamentoCarrera(idDeptoCarrera)
					 );


CREATE TABLE TipoPeriodo(idTipoPeriodo INT PRIMARY KEY NOT NULL,
						 descripcion VARCHAR(15)
						 );

CREATE TABLE Asignatura(idAsignatura INT PRIMARY KEY NOT NULL,
						codigoAsignatura VARCHAR(15),
						nombreAsignatura VARCHAR(45),
						unidadesValorativas INT,
						examenUnificado BIT,
						poseeLaboratorio BIT,
						idTipoPeriodo INT,
					    FOREIGN KEY(idTipoPeriodo) REFERENCES TipoPeriodo(idTipoPeriodo)
					    );


CREATE TABLE CoordinadorAsignatura(idCoordinadorAsignatura INT PRIMARY KEY NOT NULL,
								   fechaInicio DATE,
								   fechaFin DATE,
								   idAsignatura INT,
								   idDocente INT,
								   FOREIGN KEY(idAsignatura) REFERENCES Asignatura(idAsignatura),
								   FOREIGN KEY(idDocente) REFERENCES Docente(idDocente)
								   );


/* Estudiantes */
CREATE TABLE NotaExamenAptitud(idNotaAptitud INT PRIMARY KEY NOT NULL,
							   notaPaa INT NOT NULL,
							   notaPam INT,
							   notaPccns INT
							   );

CREATE TABLE Periodo(idPeriodo INT PRIMARY KEY NOT NULL,
					fechaInicio DATE,
					fechaFinalizacion DATE,
					anio INT,
					idTipoPeriodo INT,
					FOREIGN KEY(idTipoPeriodo) REFERENCES TipoPeriodo(idTipoPeriodo)
					);

CREATE TABLE Seccion(idSeccion INT PRIMARY KEY NOT NULL,
                     horaInicial INT,
					 horaFinal INT,
					 observaciones VARCHAR(45),
					 cuposDisponibles INT,
					 idDocente INT,
					 idAsignatura INT,
					 idAula INT,
					 idEdificio INT,
					 idPeriodo INT,
					 FOREIGN KEY(idDocente) REFERENCES Docente(idDocente),
					 FOREIGN KEY(idAsignatura) REFERENCES Asignatura(idAsignatura),
					 FOREIGN KEY(idAula) REFERENCES Aula(idAula),
					 FOREIGN KEY(idEdificio) REFERENCES Edificio(idEdificio),
					 FOREIGN KEY(idPeriodo) REFERENCES Periodo(idPeriodo),
					 ); 


CREATE TABLE Estudiante(idEstudiante INT PRIMARY KEY NOT NULL,
						perteneceDeportes BIT,
						contrasenia VARCHAR(45),
						idCentro INT,
						idNotaAptitud INT,
						idDeptoCarrera INT,
						idpersona VARCHAR(15),
						FOREIGN KEY(idCentro) REFERENCES CentroUniversitario(idCentro),
						FOREIGN KEY(idNotaAptitud) REFERENCES NotaExamenAPtitud(idNotaAptitud),
						FOREIGN KEY(idDeptoCarrera) REFERENCES DepartamentoCarrera(idDeptoCarrera),
						FOREIGN KEY(idPersona) REFERENCES Persona(idPersona),
						);

CREATE TABLE HistorialAcademico(idHistorial INT PRIMARY KEY NOT NULL,
								indicePeriodo INT,
								indiceGlobal INT,
								idEstudiante INT,
								FOREIGN KEY(idEstudiante) REFERENCES Estudiante(idEstudiante),
								);

CREATE TABLE Matricula(idMatricula INT PRIMARY KEY NOT NULL,
					   confirmacionPago BIT,
					   fechaInicio DATE,
					   fechaFin DATE,
					   idPeriodo INT,
					   idEstudiante INT,
					   idHistorial INT,
					   FOREIGN KEY(idPeriodo) REFERENCES Periodo(idPeriodo),
					   FOREIGN KEY(idEstudiante) REFERENCES Estudiante(idEstudiante),
					   FOREIGN KEY(idHistorial) REFERENCES HistorialAcademico(idHistorial)
					   );


CREATE TABLE ObservacionNotaFinal(
					   idObservacionNotaFinal INT PRIMARY KEY NOT NULL,
					   descripcion VARCHAR(20)
					   );
					    
CREATE TABLE SeccionMatricula(
							  idMatricula INT,
							  idSeccion INT,
							  notaFinal DECIMAL (2,2),
							  idObservacionNota INT,
							  FOREIGN KEY(idMatricula) REFERENCES Matricula(idMatricula),
							  FOREIGN KEY(idSeccion) REFERENCES Seccion(idSeccion),
							  FOREIGN KEY(idObservacionNota) REFERENCES ObservacionNotaFinal(idObservacionNotaFinal)
							  );





CREATE TABLE PensumAcademico(idAsignatura INT  NOT NULL,
							 idPlanEstudio INT NOT NULL,
							 PRIMARY KEY(idAsignatura,idPlanEstudio),
							 FOREIGN KEY(idAsignatura) REFERENCES Asignatura(idAsignatura),
							 FOREIGN KEY(idPlanEstudio) REFERENCES PlanEstudio(idPlanEstudio)
							 )

CREATE TABLE Requisitos(idAsignatura INT NOT NULL,
						idPlanEstudio INT NOT NULL,  /* DUDAS no se si dejaarla como lo tenemos en word o en lo otro*/
						PRIMARY KEY(idAsignatura,idPlanEstudio),
					    FOREIGN KEY(idAsignatura) REFERENCES Asignatura(idAsignatura),
					    FOREIGN KEY(idPlanEstudio) REFERENCES PlanEstudio(idPlanEstudio)
					    )





					 

					   		 
   					   					




						
