
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

SELECT * FROM ManejoDeSeccion.unah.Asignatura
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

SELECT * FROM ManejoDeSeccion.unah.Edificio
/*

CREATE TABLE ProyectoSistemaMatricula.unah.Aula(
												  idCodigoAula VARCHAR(15),
												  idCodigoEdificio VARCHAR(15),
												  cantidadMaximaDeEstudiante INT,
												  observacion VARCHAR(45),
												  PRIMARY KEY(idCodigoAula,idCodigoEdificio),												  
												  FOREIGN KEY(idCodigoEdificio) REFERENCES ProyectoSistemaMatricula.unah.Edificio(idCodigoEdificio)
												  );
*/

INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('A101','B2',30,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('A101','B1',30,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('A101','D1',30,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('A101','F1',30,'');


SELECT * FROM ManejoDeSeccion.unah.Aula
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

SELECT * FROM ManejoDeSeccion.unah.Periodo
/*	
CREATE TABLE ManejoDeSeccion.unah.tipoSeccion (
														idTipoSeccion INT PRIMARY KEY,
														tipo VARCHAR (25))
*/

INSERT INTO  ManejoDeSeccion.unah.tipoSeccion (idTipoSeccion ,tipo) VALUES 	(001,'PRESENCIAL');
INSERT INTO  ManejoDeSeccion.unah.tipoSeccion (idTipoSeccion ,tipo) VALUES 	(002,'VIRTUAL');
INSERT INTO  ManejoDeSeccion.unah.tipoSeccion (idTipoSeccion ,tipo) VALUES 	(003,'LABORATORIO');
INSERT INTO  ManejoDeSeccion.unah.tipoSeccion (idTipoSeccion ,tipo) VALUES 	(004,'DISTANCIA');	
			
SELECT * from  ManejoDeSeccion.unah.tipoSeccion

/*
CREATE TABLE ManejoDeSeccion.unah.ObservacionNotaFinal(
																   idObservacionNotaFinal VARCHAR(3) PRIMARY KEY NOT NULL,
																   descripcion VARCHAR(20)
																   );
*/

INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('APR','APROBADO');
INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('RPB','REPROBADO');


SELECT * FROM ManejoDeSeccion.unah.ObservacionNotaFinal



/*CREATE TABLE ManejoDeSeccion.unah.Dias (
													idDias INT PRIMARY KEY ,
													descripcionDias VARCHAR(25)
													);
*/


INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (001,'LuMaMiJuVi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (002,'LuMaMiJu');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (003,'LuMaMi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (004,'LuMiVi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (005,'Lu');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (006,'Ma');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (007,'Mi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (008,'Ju');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (009,'Vi');

/*
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
*/



INSERT INTO  ManejoDeSeccion.unah.Seccion(idSeccion ,horaInicial ,horaFinal,idDias ,observaciones ,cuposDisponibles ,idTipoSeccion ,idDocente ,fechaInicioCargo ,idAsignatura  ,idCodigoAula ,idCodigoEdificio ,idPeriodo ,fechaInicioPeriodo ,idTipoPeriodo) VALUES
											 (001,0600,0700,001,'Seccion de laboratorio',25,004,001,'2015-02-05','FS100','A101','B2','I','2020-01-01',001)

INSERT INTO  ManejoDeSeccion.unah.Seccion(idSeccion ,horaInicial ,horaFinal,idDias ,observaciones ,cuposDisponibles ,idTipoSeccion ,idDocente ,fechaInicioCargo ,idAsignatura  ,idCodigoAula ,idCodigoEdificio ,idPeriodo ,fechaInicioPeriodo ,idTipoPeriodo) VALUES
											 (002,0600,0700,007,'Seccion de laboratorio',25,004,001,'2015-02-05','FS100','A101','B2','I','2020-01-01',001)


select * from  ManejoDeSeccion.unah.Seccion




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Estrada
-- Create date: 26/04/2020
-- Description:	Aumentar cupo a seccion establecida 
-- =============================================
CREATE PROCEDURE SP_AumentarCupo(
		@pidSeccion INT,
		@pidAsignatura  VARCHAR(15),
		@phoraInicial   INT,
		@pidCodigoAula  VARCHAR(15),
		@pidCodigoEdificio  VARCHAR(15),
		)		
AS
BEGIN
	DECLARE 	@pCantidad INT;

	@pCantidad  

	SELECT cuposDisponibles from ManejoDeSeccion.unah.Seccion
	WHERE idAsignatura = @pidAsignatura AND horaInicial =@phoraInicial AND 	idCodigoAula =	@pidCodigoAula AND idCodigoEdificio = @pidCodigoEdificio

	
	SELECT cantidadMaximaDeEstudiante from ManejoDeSeccion.unah.Aula
	WHERE idAsignatura = @pidAsignatura AND horaInicial =@phoraInicial AND 	idCodigoAula =	@pidCodigoAula AND idCodigoEdificio = @pidCodigoEdificio


	SELECT * FROM  ManejoDeSeccion.unah.Seccion
	 
	 UPDATE ManejoDeSeccion.unah.Seccion
		SET cuposDisponibles = @pCantidad
			WHERE idAsignatura = @pidAsignatura AND horaInicial =@phoraInicial AND 	idCodigoAula =	@pidCodigoAula AND idCodigoEdificio = @pidCodigoEdificio

	PRINT 'Exito'
END
GO
