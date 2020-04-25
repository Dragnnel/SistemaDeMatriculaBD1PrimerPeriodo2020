

/*

CREATE TABLE ManejoDeSeccion.unah.TipoPeriodo(
														 idTipoPeriodo INT PRIMARY KEY,
														 descripcion VARCHAR(15)
														 );
*/

INSERT INTO ManejoDeSeccion.unah.TipoPeriodo (idTipoPeriodo,descripcion) VALUES (001,'TRIMESTRAL');
INSERT INTO ManejoDeSeccion.unah.TipoPeriodo (idTipoPeriodo,descripcion) VALUES (002,'SEMESTRAL');


/*
CREATE TABLE ManejoDeSeccion.unah.Asignatura(
														idAsignatura VARCHAR(15) PRIMARY KEY, ---codigoAsignatura
														nombreAsignatura VARCHAR(45),
														unidadesValorativas INT,
														examenUnificado BIT,
														poseeLaboratorio BIT,
														idTipoPeriodo INT,
														FOREIGN KEY(idTipoPeriodo) REFERENCES ManejoDeSeccion.unah.TipoPeriodo(idTipoPeriodo)
														);
*/

INSERT INTO ManejoDeSeccion.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('FS100','Fisica General I',5,1,1,1);
INSERT INTO ManejoDeSeccion.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('FS200','Fisica General II',5,1,1,1);

INSERT INTO ManejoDeSeccion.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IS412','	SISTEMAS OPERATIVOS I',5,0,0,1);
INSERT INTO ManejoDeSeccion.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM202','CALCULO II',5,1,0,1);

INSERT INTO ManejoDeSeccion.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM411 ','ECUACIONES DIFERENCIALES',3,1,0,1);
INSERT INTO ManejoDeSeccion.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM401','	ESTADISTICA I',3,1,0,1);

/*
CREATE TABLE ManejoDeSeccion.unah.Edificio(
													  idCodigoEdificio VARCHAR(15) PRIMARY KEY,
													  edificio VARCHAR(45),
													  fechaFundacion DATE,
													  observacion VARCHAR(45),
													  idCentroUniversitario INT,
													  --FOREIGN KEY(idCentroUniversitario) REFERENCES ManejoDeSeccion.unah.CentroUniversitario(idCentro)
													  );
*/

INSERT INTO ManejoDeSeccion.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('B2','Facultad de Ingenieria','1980-01-15','Edificio Principal de Ingenieria ',1);

INSERT INTO ManejoDeSeccion.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('B1','Facultad de Ingenieria','1985-01-15','Edificio de Talleres de Ingenieria ',1);

INSERT INTO ManejoDeSeccion.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('D1','Facultad de Humanidades y Artes','1990-01-15','Edificio de Area Social',1);

INSERT INTO ManejoDeSeccion.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('F1','Facultad de Humanidades y Artes','1995-01-15','Edificio de Area Social',1);

/*
CREATE TABLE ManejoDeSeccion.unah.Aula(
												  idAula INT PRIMARY KEY,
												  codigoAula VARCHAR(10),
												  cantidadMaximaDeEstudiante INT,
												  observacion VARCHAR(45),
												  idEdificio VARCHAR(15),
												  FOREIGN KEY(idEdificio) REFERENCES ManejoDeSeccion.unah.Edificio(idCodigoEdificio)
												  );
*/

INSERT INTO  ManejoDeSeccion.unah.Aula(idAula , codigoAula, cantidadMaximaDeEstudiante,  observacion, idEdificio) VALUES
										(001,'A101',30,'','B2');

INSERT INTO  ManejoDeSeccion.unah.Aula(idAula , codigoAula, cantidadMaximaDeEstudiante,  observacion, idEdificio) VALUES
										(002,'A101',35,'','B1');

INSERT INTO  ManejoDeSeccion.unah.Aula(idAula , codigoAula, cantidadMaximaDeEstudiante,  observacion, idEdificio) VALUES
										(003,'A101',40,'','D1');

INSERT INTO  ManejoDeSeccion.unah.Aula(idAula , codigoAula, cantidadMaximaDeEstudiante,  observacion, idEdificio) VALUES
										(004,'A101',50,'','F1');

/*
CREATE TABLE ManejoDeSeccion.unah.Periodo( 
													idPeriodo CHAR(3),
													fechaInicio DATE,
													idTipoPeriodo INT,
													fechaFinalizacion DATE,
													anio INT,
													PRIMARY KEY(idPeriodo,fechaInicio,idTipoPeriodo),
													FOREIGN KEY(idTipoPeriodo) REFERENCES ManejoDeSeccion.unah.TipoPeriodo(idTipoPeriodo)
													);

*/


INSERT INTO ManejoDeSeccion.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('I','2020-01-01',001,'2020-04-30',2020);

INSERT INTO ManejoDeSeccion.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('I','2020-01-01',002,'2020-06-30',2020);


INSERT INTO ManejoDeSeccion.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('II','2020-05-01',001,'2020-09-30',2020);

INSERT INTO ManejoDeSeccion.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('II','2020-05-01',002,'2020-12-22',2020);
	
/*	
CREATE TABLE ManejoDeSeccion.unah.tipoSeccion (
														idTipoSeccion INT PRIMARY KEY,
														tipo VARCHAR (25))
*/

INSERT INTO  ManejoDeSeccion.unah.tipoSeccion (idTipoSeccion ,tipo) VALUES 	(001,'PRESENCIAL');
INSERT INTO  ManejoDeSeccion.unah.tipoSeccion (idTipoSeccion ,tipo) VALUES 	(002,'VIRTUAL');
INSERT INTO  ManejoDeSeccion.unah.tipoSeccion (idTipoSeccion ,tipo) VALUES 	(003,'DISTANCIA');
INSERT INTO  ManejoDeSeccion.unah.tipoSeccion (idTipoSeccion ,tipo) VALUES 	(004,'LABORATORIO');
				
SELECT 
/*
CREATE TABLE ManejoDeSeccion.unah.ObservacionNotaFinal(
																   idObservacionNotaFinal VARCHAR(3) PRIMARY KEY NOT NULL,
																   descripcion VARCHAR(20)
																   );
*/

INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('APR','APROBADO');
INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('RPB','REPROBADO');




/*

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

*/



INSERT INTO  ManejoDeSeccion.unah.Seccion(idSeccion ,horaInicial ,horaFinal ,observaciones ,cuposDisponibles ,idTipoSeccion ,idDocente ,fechaInicioCargo ,idAsignatura  ,idAula ,idEdificio ,idPeriodo ,fechaInicioPeriodo ,idTipoPeriodo) VALUES
											 (001,0600,0700,'Seccion de laboratorio',25,004,001,'2015-02-05','FS100','A102','B2','I','2020-01-01',001)