
CREATE DATABASE ManejoDeSeccion;

CREATE SCHEMA unah;



CREATE TABLE ManejoDeSeccion.unah.TipoPeriodo(
														 idTipoPeriodo INT PRIMARY KEY,
														 descripcion VARCHAR(15)
														 );

CREATE TABLE ManejoDeSeccion.unah.Asignatura(
														idAsignatura VARCHAR(15) PRIMARY KEY, ---codigoAsignatura
														nombreAsignatura VARCHAR(45),
														unidadesValorativas INT,
														examenUnificado BIT,
														poseeLaboratorio BIT,
														idTipoPeriodo INT,
														FOREIGN KEY(idTipoPeriodo) REFERENCES ManejoDeSeccion.unah.TipoPeriodo(idTipoPeriodo)
														);


CREATE TABLE ManejoDeSeccion.unah.Edificio(
													  idCodigoEdificio VARCHAR(15) PRIMARY KEY,
													  edificio VARCHAR(45),
													  fechaFundacion DATE,
													  observacion VARCHAR(45),
													  idCentroUniversitario INT,
													  --FOREIGN KEY(idCentroUniversitario) REFERENCES ManejoDeSeccion.unah.CentroUniversitario(idCentro)
													  );






CREATE TABLE ManejoDeSeccion.unah.Aula(
												  idCodigoAula VARCHAR(15),
												  idCodigoEdificio VARCHAR(15),
												  cantidadMaximaDeEstudiante INT,
												  observacion VARCHAR(45),
												  PRIMARY KEY(idCodigoAula,idCodigoEdificio),												  
												  FOREIGN KEY(idCodigoEdificio) REFERENCES ManejoDeSeccion.unah.Edificio(idCodigoEdificio)
												  );




CREATE TABLE ManejoDeSeccion.unah.Periodo( 
													idPeriodo CHAR(3),
													fechaInicio DATE,
													idTipoPeriodo INT,
													fechaFinalizacion DATE,
													anio INT,
													PRIMARY KEY(idPeriodo,fechaInicio,idTipoPeriodo),
													FOREIGN KEY(idTipoPeriodo) REFERENCES ManejoDeSeccion.unah.TipoPeriodo(idTipoPeriodo)
													);


CREATE TABLE ManejoDeSeccion.unah.tipoSeccion (
														idTipoSeccion INT PRIMARY KEY,
														tipo VARCHAR (25)
													);

CREATE TABLE ManejoDeSeccion.unah.ObservacionNotaFinal(
																   idObservacionNotaFinal VARCHAR(3) PRIMARY KEY NOT NULL,
																   descripcion VARCHAR(20)
														);

CREATE TABLE ManejoDeSeccion.unah.Dias (
													idDias INT PRIMARY KEY ,
													descripcionDias VARCHAR(25)
													);

CREATE TABLE ManejoDeSeccion.unah.Seccion(
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
													 idCodigoEdificio VARCHAR (15),
													 idPeriodo CHAR(3),
													 fechaInicioPeriodo DATE,
													 idTipoPeriodo INT,
													 PRIMARY KEY(idSeccion, idAsignatura,horaInicial,idCodigoAula,idCodigoEdificio),
													 --FOREIGN KEY(idDocente,fechaInicioCargo) REFERENCES ManejoDeSeccion.unah.Docente(idDocente,fechaInicioCargo),
													 FOREIGN KEY(idDias) REFERENCES ManejoDeSeccion.unah.Dias(idDias),
													 FOREIGN KEY(idAsignatura) REFERENCES ManejoDeSeccion.unah.Asignatura(idAsignatura),
													 FOREIGN KEY(idTipoSeccion) REFERENCES ManejoDeSeccion.unah.tipoSeccion(idTipoSeccion),
													 FOREIGN KEY(idCodigoAula,idCodigoEdificio) REFERENCES ManejoDeSeccion.unah.Aula(idCodigoAula,idCodigoEdificio),
													 FOREIGN KEY(idPeriodo,fechaInicioPeriodo,idTipoPeriodo) REFERENCES ManejoDeSeccion.unah.Periodo(idPeriodo,fechaInicio,idTipoPeriodo)
													 ); 