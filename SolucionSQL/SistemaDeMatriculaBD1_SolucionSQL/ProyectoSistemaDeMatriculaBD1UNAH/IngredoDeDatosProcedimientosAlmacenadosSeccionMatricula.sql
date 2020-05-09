
DROP DATABASE ManejoDeSeccion;



CREATE DATABASE ManejoDeSeccion;

CREATE SCHEMA unah;


/*

CREATE TABLE ManejoDeSeccion.unah.TipoPeriodo(
														 idTipoPeriodo INT PRIMARY KEY,
														 descripcion VARCHAR(15)
														 );
*/

INSERT INTO ManejoDeSeccion.unah.TipoPeriodo (idTipoPeriodo,descripcion) VALUES (001,'TRIMESTRAL');
INSERT INTO ManejoDeSeccion.unah.TipoPeriodo (idTipoPeriodo,descripcion) VALUES (002,'SEMESTRAL');

SELECT * FROM ManejoDeSeccion.unah.TipoPeriodo
/*
CREATE  TABLE ManejoDeSeccion.unah.Asignatura(
														idAsignatura VARCHAR(5) PRIMARY KEY, ---codigoAsignatura
														nombreAsignatura VARCHAR(100),
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

INSERT INTO ManejoDeSeccion.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('EN011','Enf. Pres. y Futuro I',3,1,1,2);
INSERT INTO ManejoDeSeccion.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI043','	Ecología y Salud I',4,0,0,2);

SELECT * FROM ManejoDeSeccion.unah.Asignatura

/*
CREATE TABLE ManejoDeSeccion.unah.Edificio(
													  idCodigoEdificio VARCHAR(25) PRIMARY KEY,
													  edificio VARCHAR(45),
													  fechaFundacion DATE,
													  observacion VARCHAR(300),
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
INSERT INTO ManejoDeSeccion.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('C1','Facultad de Ciencia Economica','1990-01-15','Edificio de ciencias econimicas',1);

INSERT INTO ManejoDeSeccion.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('C2','Facultad de Ciencia Economicas','1995-01-15','Edificio de ciencias econimicas',1);
INSERT INTO ManejoDeSeccion.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('G1','Facultad de Odontologia','1990-01-15','Edificio de odontologia',1);

INSERT INTO ManejoDeSeccion.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('H1','Facultad de Quimica y farmacia','2005-01-15','Edificio de quimica y farmacia ',1);


SELECT * FROM ManejoDeSeccion.unah.Edificio

/*
CREATE TABLE ManejoDeSeccion.unah.Aula(
												  idCodigoAula VARCHAR(25),
												  idCodigoEdificio VARCHAR(25),
												  cantidadMaximaDeEstudiante INT,
												  observacion VARCHAR(300),
												  PRIMARY KEY(idCodigoAula,idCodigoEdificio),												  
												  FOREIGN KEY(idCodigoEdificio) REFERENCES ManejoDeSeccion.unah.Edificio(idCodigoEdificio)
												  );
*/

INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','B2',30,'Acondionada para Data show');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','B1',45,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','D1',50,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','F1',70,'Acondicionado con conexion ethernel');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','C2',25,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','C1',45,'Mobiliario soldado al piso');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','G1',55,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','H1',45,'');

SELECT * FROM ManejoDeSeccion.unah.Aula

/*
CREATE TABLE ManejoDeSeccion.unah.Periodo( 
													idPeriodo VARCHAR(3),
													fechaInicio DATE,
													idTipoPeriodo INT,
													fechaFinalizacion DATE,
													anio INT,
													PRIMARY KEY(idPeriodo,fechaInicio,idTipoPeriodo),
													FOREIGN KEY(idTipoPeriodo) REFERENCES ManejoDeSeccion.unah.TipoPeriodo(idTipoPeriodo)
													);

*/

SELECT * FROM ManejoDeSeccion.unah.TipoPeriodo

INSERT INTO ManejoDeSeccion.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('I','2020-01-01',001,'2020-04-30',2020);

INSERT INTO ManejoDeSeccion.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('I','2020-01-01',002,'2020-06-30',2020);

INSERT INTO ManejoDeSeccion.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('II','2020-05-01',001,'2020-09-30',2020);

INSERT INTO ManejoDeSeccion.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('II','2020-07-01',002,'2020-12-22',2020);

SELECT * FROM ManejoDeSeccion.unah.Periodo

/*	
CREATE TABLE ManejoDeSeccion.unah.TipoSeccion (
														idTipoSeccion INT PRIMARY KEY,
														tipo VARCHAR (25)
												);
*/

INSERT INTO  ManejoDeSeccion.unah.TipoSeccion (idTipoSeccion ,tipo) VALUES 	(001,'PRESENCIAL');
INSERT INTO  ManejoDeSeccion.unah.TipoSeccion (idTipoSeccion ,tipo) VALUES 	(002,'VIRTUAL');
INSERT INTO  ManejoDeSeccion.unah.TipoSeccion (idTipoSeccion ,tipo) VALUES 	(003,'LABORATORIO');	
			
SELECT * from  ManejoDeSeccion.unah.TipoSeccion

/*
CREATE TABLE ManejoDeSeccion.unah.ObservacionNotaFinal(
																   idObservacionNotaFinal VARCHAR(3) PRIMARY KEY NOT NULL,
																   descripcion VARCHAR(25)
																   );
*/

INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('APR','APROBADO');
INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('RPB','REPROBADO');
INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('ABN','ABANDONO');
INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('NPS','NO SE PRESENTO');


SELECT * FROM ManejoDeSeccion.unah.ObservacionNotaFinal;

/*
CREATE TABLE ManejoDeSeccion.unah.Dias (
													idDias INT PRIMARY KEY ,
													descripcionDias VARCHAR(25)
													);
*/

INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (001,'LuMaMiJuViSa');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (002,'LuMaMiJuVi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (003,'LuMaMiJu');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (004,'LuMaMi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (005,'LuMi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (006,'MaJu');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (007,'Lu');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (008,'Ma');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (009,'Mi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (010,'Ju');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (011,'Vi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (012,'Sa');

SELECT * FROM ManejoDeSeccion.unah.Dias

/*
CREATE ALTER TABLE ManejoDeSeccion.unah.Seccion(
													 idAsignatura  VARCHAR(5),
													 idSeccion VARCHAR(4),
													 horaInicial INT,
													 horaFinal INT,
													 idDias INT,
													 idCodigoAula VARCHAR(25) NULL,
													 idCodigoEdificio VARCHAR (25) NULL,
													 observaciones VARCHAR(300),
													 cuposDisponibles INT,
													 idTipoSeccion INT,
													 idDocente INT,
													 fechaInicioCargo DATE,
													 idPeriodo VARCHAR(3),
													 fechaInicioPeriodo DATE,
													 idTipoPeriodo INT,
													 PRIMARY KEY(idAsignatura,idSeccion,horaInicial,idDias,idCodigoAula,idCodigoEdificio),
													 --FOREIGN KEY(idDocente,fechaInicioCargo) REFERENCES ManejoDeSeccion.unah.Docente(idDocente,fechaInicioCargo),
													 FOREIGN KEY(idDias) REFERENCES ManejoDeSeccion.unah.Dias(idDias),
													 FOREIGN KEY(idAsignatura) REFERENCES ManejoDeSeccion.unah.Asignatura(idAsignatura),
													 FOREIGN KEY(idTipoSeccion) REFERENCES ManejoDeSeccion.unah.tipoSeccion(idTipoSeccion),
													 FOREIGN KEY(idCodigoAula,idCodigoEdificio) REFERENCES ManejoDeSeccion.unah.Aula(idCodigoAula,idCodigoEdificio),
													 FOREIGN KEY(idPeriodo,fechaInicioPeriodo,idTipoPeriodo) REFERENCES ManejoDeSeccion.unah.Periodo(idPeriodo,fechaInicio,idTipoPeriodo)
													 ); 
*/


SELECT * FROM ManejoDeSeccion.unah.Asignatura
SELECT * FROM ManejoDeSeccion.unah.Dias
SELECT * FROM ManejoDeSeccion.unah.TipoPeriodo
SELECT * FROM ManejoDeSeccion.unah.TipoSeccion

INSERT INTO  ManejoDeSeccion.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('FS100','0700',0700,0800,002,'101','B2',' Clase presencial ',30,
												001,001,'2015-02-05','I','2020-01-01',001);

INSERT INTO  ManejoDeSeccion.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('FS200','0900',0900,1000,002,'101','C2',' Clase presencial ',40,
												001,007,'2015-02-05','I','2020-01-01',001);

INSERT INTO  ManejoDeSeccion.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('FS200','1000',1000,1200,008,'101','F1','Seccion de laboratorio',30,
												003,004,'2015-02-05','I','2020-01-01',001);


INSERT INTO  ManejoDeSeccion.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('EN011','0800',0800,0900,004,'101','H1','Clase presencial',35,
												001,001,'2015-02-05','I','2020-01-01',002);


INSERT INTO  ManejoDeSeccion.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('BI043','1100',1100,1200,005,'101','H1','Clase presencial',65,
												001,008,'2015-02-05','I','2020-01-01',002);

select * from  ManejoDeSeccion.unah.Seccion


/*
CREATE TABLE ManejoDeSeccion.unah.SeccionVirtual(
													 idAsignatura  VARCHAR(5),
													 idSeccion VARCHAR(4),
													 horaInicial INT,
													 horaFinal INT,
													 idDias INT,
													 observaciones VARCHAR(300),
													 cuposDisponibles INT,
													 idTipoSeccion INT,
													 idDocente INT,
													 fechaInicioCargo DATE,
													 idPeriodo VARCHAR(3),
													 fechaInicioPeriodo DATE,
													 idTipoPeriodo INT,
													 PRIMARY KEY(idAsignatura,idSeccion,horaInicial,idDias),
													 --FOREIGN KEY(idDocente,fechaInicioCargo) REFERENCES ManejoDeSeccion.unah.Docente(idDocente,fechaInicioCargo),
													 FOREIGN KEY(idDias) REFERENCES ManejoDeSeccion.unah.Dias(idDias),
													 FOREIGN KEY(idAsignatura) REFERENCES ManejoDeSeccion.unah.Asignatura(idAsignatura),
													 FOREIGN KEY(idTipoSeccion) REFERENCES ManejoDeSeccion.unah.tipoSeccion(idTipoSeccion),
													 FOREIGN KEY(idPeriodo,fechaInicioPeriodo,idTipoPeriodo) REFERENCES ManejoDeSeccion.unah.Periodo(idPeriodo,fechaInicio,idTipoPeriodo)
													 ); 
*/
INSERT INTO  ManejoDeSeccion.unah.SeccionVirtual(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('FS200','0700',0700,0800,002,' Clase virtual ',25,
												002,002,'2015-02-05','I','2020-01-01',001);

INSERT INTO  ManejoDeSeccion.unah.SeccionVirtual(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('FS100','0700',0700,0900,002,' Laboratorio virtual ',25,
												002,005,'2015-02-05','I','2020-01-01',002);

SELECT * FROM ManejoDeSeccion.unah.SeccionVirtual





