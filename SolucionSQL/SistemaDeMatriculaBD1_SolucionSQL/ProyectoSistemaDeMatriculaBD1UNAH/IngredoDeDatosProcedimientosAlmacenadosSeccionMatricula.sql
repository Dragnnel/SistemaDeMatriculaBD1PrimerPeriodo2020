
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

INSERT INTO ManejoDeSeccion.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('EN-011 ','Enf. Pres. y Futuro I ',3,1,1,2);
INSERT INTO ManejoDeSeccion.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI-043','	Ecología y Salud I',4,0,0,2);


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
										('A101','B2',35,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('A101','B1',45,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('A101','D1',50,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('A101','F1',40,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('A101','C2',35,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('A101','C1',45,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('A101','G1',50,'');
INSERT INTO  ManejoDeSeccion.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('A101','H1',40,'');

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
										('II','2020-07-01',002,'2020-12-22',2020);

SELECT * FROM ManejoDeSeccion.unah.Periodo
/*	
CREATE TABLE ManejoDeSeccion.unah.tipoSeccion (
														idTipoSeccion INT PRIMARY KEY,
														tipo VARCHAR (25))
*/

INSERT INTO  ManejoDeSeccion.unah.tipoSeccion (idTipoSeccion ,tipo) VALUES 	(001,'PRESENCIAL');
INSERT INTO  ManejoDeSeccion.unah.tipoSeccion (idTipoSeccion ,tipo) VALUES 	(002,'VIRTUAL');
INSERT INTO  ManejoDeSeccion.unah.tipoSeccion (idTipoSeccion ,tipo) VALUES 	(003,'LABORATORIO');	
			
SELECT * from  ManejoDeSeccion.unah.tipoSeccion

/*
CREATE TABLE ManejoDeSeccion.unah.ObservacionNotaFinal(
																   idObservacionNotaFinal VARCHAR(3) PRIMARY KEY NOT NULL,
																   descripcion VARCHAR(20)
																   );
*/

INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('APR','APROBADO');
INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('RPB','REPROBADO');
INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('ABN','ABANDONO');
INSERT INTO ManejoDeSeccion.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('NPS','NO SE PRESENTO');


SELECT * FROM ManejoDeSeccion.unah.ObservacionNotaFinal



/*CREATE TABLE ManejoDeSeccion.unah.Dias (
													idDias INT PRIMARY KEY ,
													descripcionDias VARCHAR(25)
													);
*/
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (000,'LuMaMiJuViSa');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (001,'LuMaMiJuVi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (002,'LuMaMiJu');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (003,'LuMaMi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (004,'LuMi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (005,'MaJu');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (006,'Lu');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (007,'Ma');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (008,'Mi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (009,'Ju');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (0010,'Vi');
INSERT INTO ManejoDeSeccion.unah.Dias (idDias ,descripcionDias) VALUES (0011,'Sa');

SELECT * FROM ManejoDeSeccion.unah.Dias

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


SELECT * FROM ManejoDeSeccion.unah.Asignatura
SELECT * FROM ManejoDeSeccion.unah.Dias
SELECT * FROM ManejoDeSeccion.unah.TipoPeriodo
SELECT * FROM ManejoDeSeccion.unah.tipoSeccion

INSERT INTO  ManejoDeSeccion.unah.Seccion(idSeccion ,horaInicial ,horaFinal,idDias ,observaciones ,cuposDisponibles ,idTipoSeccion ,idDocente ,fechaInicioCargo ,idAsignatura  ,idCodigoAula ,idCodigoEdificio ,idPeriodo ,fechaInicioPeriodo ,idTipoPeriodo) VALUES
											 (0700,0700,0800,001,' Clase presencial ',30,001,001,'2015-02-05','FS100','A101','B2','I','2020-01-01',001)

INSERT INTO  ManejoDeSeccion.unah.Seccion(idSeccion ,horaInicial ,horaFinal,idDias ,observaciones ,cuposDisponibles ,idTipoSeccion ,idDocente ,fechaInicioCargo ,idAsignatura  ,idCodigoAula ,idCodigoEdificio ,idPeriodo ,fechaInicioPeriodo ,idTipoPeriodo) VALUES
											 (0701,0700,0800,002,'Clase virtual',35,002,001,'2015-02-05','FS200','A101','B1','I','2020-01-01',001)

INSERT INTO  ManejoDeSeccion.unah.Seccion(idSeccion ,horaInicial ,horaFinal,idDias ,observaciones ,cuposDisponibles ,idTipoSeccion ,idDocente ,fechaInicioCargo ,idAsignatura  ,idCodigoAula ,idCodigoEdificio ,idPeriodo ,fechaInicioPeriodo ,idTipoPeriodo) VALUES
											 (1000,01000,1200,008,'Seccion de laboratorio',25,003,001,'2015-02-05','FS100','A101','F1','I','2020-01-01',001)

INSERT INTO  ManejoDeSeccion.unah.Seccion(idSeccion ,horaInicial ,horaFinal,idDias ,observaciones ,cuposDisponibles ,idTipoSeccion ,idDocente ,fechaInicioCargo ,idAsignatura  ,idCodigoAula ,idCodigoEdificio ,idPeriodo ,fechaInicioPeriodo ,idTipoPeriodo) VALUES
											 (1500,1500,1700,010,'Seccion de laboratorio',25,003,001,'2015-02-05','FS200','A101','C2','I','2020-01-01',001)


INSERT INTO  ManejoDeSeccion.unah.Seccion(idSeccion ,horaInicial ,horaFinal,idDias ,observaciones ,cuposDisponibles ,idTipoSeccion ,idDocente ,fechaInicioCargo ,idAsignatura  ,idCodigoAula ,idCodigoEdificio ,idPeriodo ,fechaInicioPeriodo ,idTipoPeriodo) VALUES
											 (001,0600,0700,001,'Clase presencial',35,001,001,'2015-02-05','EN-011 ','A101','G1','I','2020-01-01',001)

INSERT INTO  ManejoDeSeccion.unah.Seccion(idSeccion ,horaInicial ,horaFinal,idDias ,observaciones ,cuposDisponibles ,idTipoSeccion ,idDocente ,fechaInicioCargo ,idAsignatura  ,idCodigoAula ,idCodigoEdificio ,idPeriodo ,fechaInicioPeriodo ,idTipoPeriodo) VALUES
											 (002,0600,0700,007,'Seccion de laboratorio',32,002,001,'2015-02-05','BI-043','A101','H1','I','2020-01-01',001)

select * from  ManejoDeSeccion.unah.Seccion


-- =============================================
-- Author:		Luis Estrada
-- Create date: 26/04/2020
-- Description:	Aumentar cupo a seccion establecida 
-- =============================================
CREATE PROCEDURE [dbo].[SP_CreacionSeccionClasePresencial](
		@pidSeccion INT,
		@phoraInicial INT,
		@phoraFinal INT,
		@pidDias INT,
		@pobservaciones VARCHAR(100),
		@pcuposDisponibles INT,
		@pidTipoSeccion INT,
		@pidDocente INT, 
		@pfechaInicioCargo DATETIME, 
 		@pidAsignatura  VARCHAR(15),
		@pidCodigoAula  VARCHAR(15),
		@pidPeriodo CHAR(3), 
		@pfechaInicioPeriodo DATETIME, 
		@pidTipoPeriodo INT 
	)		
AS
BEGIN
	
END
GO








-- =============================================
-- Author:		Luis Estrada
-- Create date: 26/04/2020
-- Description:	Aumentar cupo a seccion establecida 
-- =============================================
CREATE PROCEDURE [dbo].[SP_AumentarCupo](
		@pidSeccion INT,
		@pidAsignatura  VARCHAR(15),
		@phoraInicial   INT,
		@pidCodigoAula  VARCHAR(15),
		@pidCodigoEdificio  VARCHAR(15),
		@pCantidadParaAumentar INT 
		)		
AS
BEGIN
	 DECLARE 	@pCantidadAula VARCHAR (3);
	 DECLARE 	@pCantidadMaxima VARCHAR (3);
	 DECLARE    @pAumento INT;

	 SELECT @pCantidadAula  =  T1.cuposDisponibles FROM ManejoDeSeccion.unah.Seccion AS T1
								WHERE T1.idAsignatura = @pidAsignatura AND T1.horaInicial =@phoraInicial AND 	
								T1.idCodigoAula =	@pidCodigoAula AND T1.idCodigoEdificio = @pidCodigoEdificio;

	SELECT @pCantidadMaxima  =  T2.cantidadMaximaDeEstudiante FROM ManejoDeSeccion.unah.Aula AS T2
								WHERE 	T2.idCodigoAula =	@pidCodigoAula AND T2.idCodigoEdificio = @pidCodigoEdificio;


	SET @pAumento = CAST(@pCantidadMaxima AS INT) - CAST(@pCantidadAula AS INT);

	BEGIN TRY 
	IF @pCantidadParaAumentar < = @pAumento
		BEGIN	
				 UPDATE ManejoDeSeccion.unah.Seccion
						SET cuposDisponibles = cuposDisponibles + @pCantidadParaAumentar
							WHERE idAsignatura = @pidAsignatura AND horaInicial =@phoraInicial 
							AND 	idCodigoAula =	@pidCodigoAula AND idCodigoEdificio = @pidCodigoEdificio
		END
	ELSE 
		BEGIN 
			PRINT 'No se pudo aumentar los cupos de la seccion.
			       El valor ingresado es superior a la capacidad maxima de alumnos que soporta el aula.'



		END 
	END TRY 

	BEGIN CATCH 
		PRINT 'ERROR,no se pudiron ampliar los cupos'
	END CATCH 

	/*SELECT * FROM  ManejoDeSeccion.unah.Seccion
		select  T2.cantidadMaximaDeEstudiante FROM ManejoDeSeccion.unah.Aula AS T2
								WHERE 	T2.idCodigoAula =	'A101' AND T2.idCodigoEdificio = 'C2'
	 
	

	--PRINT 'Cantidad maxima que el aula soporta' + @pCantidaMaxima ;
	--PRINT @pCantidaMaxima ;
	*/
END
GO



SELECT * FROM ManejoDeSeccion.unah.Aula


SELECT * FROM ManejoDeSeccion.unah.Seccion


SELECT * FROM ManejoDeSeccion.unah.Aula


EXEC SP_AumentarCupo 0700,'FS100',0700,'A101','B2',8

UPDATE ManejoDeSeccion.unah.Seccion
						SET cuposDisponibles = 25
							WHERE idAsignatura = 'FS100' AND horaInicial =0700 
							AND 	idCodigoAula =	'A101' AND idCodigoEdificio = 'B2'