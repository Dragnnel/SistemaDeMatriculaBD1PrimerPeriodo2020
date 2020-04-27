
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
												  idAula INT PRIMARY KEY,
												  codigoAula VARCHAR(10),
												  cantidadMaximaDeEstudiante INT,
												  observacion VARCHAR(45),
												  idEdificio VARCHAR(15),
												  FOREIGN KEY(idEdificio) REFERENCES ManejoDeSeccion.unah.Edificio(idCodigoEdificio)
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


CREATE TABLE ManejoDeSeccion.unah.Seccion(
													 idSeccion INT NOT NULL,
													 horaInicial INT,
													 horaFinal INT,
													 observaciones VARCHAR(45),
													 cuposDisponibles INT,
													 idTipoSeccion INT,
													 idDocente INT,
													 fechaInicioCargo DATE,
													 idAsignatura  VARCHAR(15),
													 idAula INT,
													 idEdificio VARCHAR (15),
													 idPeriodo CHAR(3),
													 fechaInicioPeriodo DATE,
													 idTipoPeriodo INT,
													 PRIMARY KEY(idSeccion, idAsignatura),
													 --FOREIGN KEY(idDocente,fechaInicioCargo) REFERENCES ManejoDeSeccion.unah.Docente(idDocente,fechaInicioCargo),
													 FOREIGN KEY(idAsignatura) REFERENCES ManejoDeSeccion.unah.Asignatura(idAsignatura),
													 FOREIGN KEY(idTipoSeccion) REFERENCES ManejoDeSeccion.unah.tipoSeccion(idTipoSeccion),
													 FOREIGN KEY(idAula) REFERENCES ManejoDeSeccion.unah.Aula(idAula),
													 FOREIGN KEY(idEdificio) REFERENCES ManejoDeSeccion.unah.Edificio(idCodigoEdificio),
													 FOREIGN KEY(idPeriodo,fechaInicioPeriodo,idTipoPeriodo) REFERENCES ManejoDeSeccion.unah.Periodo(idPeriodo,fechaInicio,idTipoPeriodo)
													 ); 

CREATE TABLE ManejoDeSeccion.unah.SeccionMatricula(
															  idMatricula INT,
															  idAsignatura  VARCHAR(15),
															  idSeccion INT,
															  notaFinal DECIMAL (2,2),
															  idObservacionNota VARCHAR(3),
															  PRIMARY KEY (idMatricula ,idSeccion, idAsignatura),
															  FOREIGN KEY(idMatricula) REFERENCES ManejoDeSeccion.unah.Matricula(idMatricula),
															  FOREIGN KEY(idSeccion, idAsignatura) REFERENCES ManejoDeSeccion.unah.Seccion(idSeccion, idAsignatura),
															  FOREIGN KEY(idObservacionNota) REFERENCES ManejoDeSeccion.unah.ObservacionNotaFinal(idObservacionNotaFinal)
															  );
					    
CREATE TABLE ManejoDeSeccion.unah.SeccionMatriculaEnEspera(
															  idMatricula INT,
															  idAsignatura  VARCHAR(15),
															  idSeccion INT,
															  fechaLimite DATE,
															  PRIMARY KEY (idMatricula ,idSeccion, idAsignatura),
															  FOREIGN KEY(idMatricula) REFERENCES ManejoDeSeccion.unah.Matricula(idMatricula),
															  FOREIGN KEY(idSeccion, idAsignatura) REFERENCES ManejoDeSeccion.unah.Seccion(idSeccion, idAsignatura),
															  );
CREATE TABLE ManejoDeSeccion.unah.PensumAcademico(
															 idAsignatura  VARCHAR(15),
															 idPlanEstudio INT,
															 PRIMARY KEY(idAsignatura,idPlanEstudio),
															 FOREIGN KEY(idAsignatura) REFERENCES ManejoDeSeccion.unah.Asignatura(idAsignatura),
															 FOREIGN KEY(idPlanEstudio) REFERENCES ManejoDeSeccion.unah.PlanEstudio(idPlanEstudio)
															 );

CREATE TABLE ManejoDeSeccion.unah.Requisitos(
														idAsignatura  VARCHAR(15),
														idPlanEstudio INT,  
														idRequisito1  VARCHAR(15),
														idRequisito2  VARCHAR(15),
														PRIMARY KEY(idAsignatura,idPlanEstudio),
														FOREIGN KEY(idAsignatura,idPlanEstudio) REFERENCES ManejoDeSeccion.unah.PensumAcademico(idAsignatura,idPlanEstudio),
														FOREIGN KEY(idRequisito1) REFERENCES ManejoDeSeccion.unah.Asignatura(idAsignatura),
														FOREIGN KEY(idRequisito2) REFERENCES ManejoDeSeccion.unah.Asignatura(idAsignatura)
														);




