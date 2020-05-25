---Insertar Datos Demograficos
--------------------------------------------------------------------------
/*CREATE TABLE ProyectoSistemaMatricula.unah.Continente (
														idContinente INT PRIMARY KEY,
														continente VARCHAR(45)
														);													
SELECT *
	FROM  ProyectoSistemaMatricula.unah.Persona														
*/

INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente) VALUES (1,'America');
INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente) VALUES (2,'Europa');
INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente)VALUES (3,'Asia');
INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente)VALUES (4,'Africa');
INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente)VALUES (5,'Oceania');


/*
CREATE TABLE ProyectoSistemaMatricula.unah.Pais (
												  codigoPais VARCHAR(6)  PRIMARY KEY,
												  pais VARCHAR(45),
												  idContinente INT,
												  FOREIGN KEY(idContinente) REFERENCES ProyectoSistemaMatricula.unah.Continente(idContinente)
												  );

SELECT * 
	FROM ProyectoSistemaMatricula.unah.Pais
*/

INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('HN', 'Honduras',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('SV', 'El Salvador',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('GT', 'Guatemala',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('MX', 'Mexico',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('RU', 'Russia',2);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('CN', 'China',3);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('EC', 'Ecuador',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('ID', 'Indonesia',3);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('PY', 'Paraguay',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('SP', 'Espa�a',2);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('FR', 'France',2);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('CA', 'Canada',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('MD', 'Madagascar',4);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('ML', 'Malasia',4);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('MC', 'Micronesia',5);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) VALUES ('NR', 'Nauru',5);


/*
CREATE TABLE ProyectoSistemaMatricula.unah.Departamento(
														  idDepartamento INT PRIMARY KEY,
														  departamento VARCHAR(45),
														  codigoPais VARCHAR(6),
														  FOREIGN KEY(codigoPais) REFERENCES ProyectoSistemaMatricula.unah.Pais(codigoPais)
														  );
SELECT * 
	FROM ProyectoSistemaMatricula.unah.Departamento
*/
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (1, 'Francisco Morazan', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (2, 'Gracias a Dios','HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (3, 'Islas De La Bahia', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (4, 'Santa Barbara', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (5, 'Yoro', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (6, 'Copan','HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (7, 'Choluteca', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (8, 'Comayagua','HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (9, 'Cortes', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (10, 'El paraiso', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (11, 'Colon', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (12, 'La Paz', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (13, 'Ocotepeque','HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (14, 'Lempira', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (15, 'Valle','HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (16, 'Olancho', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (17, 'Intibuca', 'HN');
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, codigoPais) VALUES (18, 'Atlantidad', 'HN');

/*
CREATE TABLE ProyectoSistemaMatricula.unah.Municipio(
													   idMunicipio INT PRIMARY KEY,
													   municipio VARCHAR(45),
													   idDepartamento INT,
													   FOREIGN KEY(idDepartamento) REFERENCES ProyectoSistemaMatricula.unah.Departamento(idDepartamento)
													   );

SELECT * 
	FROM ProyectoSistemaMatricula.unah.Municipio
*/
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (1, 'San Antonio de Oriente', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (2, 'Sabana Grande', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (3, 'Santa Ana', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (4, 'Ojojona', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (5, 'Cedros', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (6, 'Puerto Lempira', 2);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (7, 'Brus Laguna', 2);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (8, 'Villeda Morales', 2);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (9, 'Ahuas', 2);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (10, 'Juan Francisco Bulnes', 2);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (11, 'Arada', 4);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (12, 'Azacualpa', 4);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (13, 'Chinda', 4);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (14, 'Concepcion del Norte',4);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (15, 'Atima', 4);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (16, 'Juticalpa', 16);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (17, 'Campamento', 16);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (18, 'Catacamas', 16);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (19, 'Concordia', 16);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (20, 'El Rosario', 16);
INSERT INTO ProyectoSistemaMatricula.unah.Municipio(idMunicipio, municipio, idDepartamento) VALUES (21, 'Distrito Central', 1);

/*
CREATE TABLE ProyectoSistemaMatricula.unah.Direccion(
													   idDireccion INT PRIMARY KEY,
													   idMunicipio INT,
													   idDepartamento INT,
													   descripcion VARCHAR(300),
													   FOREIGN KEY(idMunicipio) REFERENCES ProyectoSistemaMatricula.unah.Municipio(idMunicipio),
													   FOREIGN KEY(idDepartamento) REFERENCES ProyectoSistemaMatricula.unah.Departamento(idDepartamento)
													   );

SELECT * 
	FROM ProyectoSistemaMatricula.unah.Direccion
*/
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMunicipio, idDepartamento ,descripcion) VALUES (11, 1, 1, 'Avenida Benito');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMunicipio, idDepartamento ,descripcion) VALUES (2, 2, 1, 'Calle 9');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMunicipio, idDepartamento ,descripcion) VALUES (3, 20, 16, 'Avenida 2 ');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMunicipio, idDepartamento ,descripcion) VALUES (4, 19, 16, 'Avenida Concepcion');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMunicipio, idDepartamento ,descripcion) VALUES (5, 15, 4, 'Avenida 6');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMunicipio, idDepartamento ,descripcion) VALUES (6, 13, 4, 'Avenida 11');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMunicipio, idDepartamento ,descripcion) VALUES (7, 11, 4, 'Avenida 8');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMunicipio, idDepartamento ,descripcion) VALUES (8, 7, 2, 'Calle Comecio');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMunicipio, idDepartamento ,descripcion) VALUES (9, 8, 2, 'Calle los Profesores');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMunicipio, idDepartamento ,descripcion) VALUES (10, 9, 2, 'Avenida 12');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMunicipio, idDepartamento ,descripcion) VALUES (1, 4, 1, 'Boulevar Suyapa');


/*
CREATE TABLE ProyectoSistemaMatricula.unah.CentroUniversitario(
																 idCentro INT PRIMARY KEY,
																 centroUniversitario VARCHAR(70),
																 sigla VARCHAR(10),
																 fechaFundacion DATE,
																 idDireccion INT,
																 FOREIGN KEY(idDireccion) REFERENCES ProyectoSistemaMatricula.unah.Direccion(idDireccion)
																 );
SELECT * FROM ProyectoSistemaMatricula.unah.CentroUniversitario
*/
INSERT INTO ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro, centroUniversitario, sigla, fechaFundacion, idDireccion) VALUES (1, 'Ciudad Univercitaria', 'CU', '1965-06-30', 11);


/*

CREATE TABLE ProyectoSistemaMatricula.unah.TipoPeriodo(
														 idTipoPeriodo INT PRIMARY KEY,
														 descripcion VARCHAR(25)
														 );

SELECT * 
	FROM ProyectoSistemaMatricula.unah.TipoPeriodo
*/

INSERT INTO ProyectoSistemaMatricula.unah.TipoPeriodo (idTipoPeriodo,descripcion) VALUES (001,'TRIMESTRAL');
INSERT INTO ProyectoSistemaMatricula.unah.TipoPeriodo (idTipoPeriodo,descripcion) VALUES (002,'SEMESTRAL');
INSERT INTO ProyectoSistemaMatricula.unah.TipoPeriodo (idTipoPeriodo,descripcion) VALUES (003,'TRIMESTRAL INTENSIVO');


/*
CREATE  TABLE ProyectoSistemaMatricula.unah.Asignatura(
														idAsignatura VARCHAR(5) PRIMARY KEY, ---codigoAsignatura
														nombreAsignatura VARCHAR(100),
														unidadesValorativas INT,
														examenUnificado BIT,
														poseeLaboratorio BIT,
														idTipoPeriodo INT,
														FOREIGN KEY(idTipoPeriodo) REFERENCES ProyectoSistemaMatricula.unah.TipoPeriodo(idTipoPeriodo)
														);

SELECT *
	FROM ProyectoSistemaMatricula.unah.Asignatura
*/

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('FS100','Fisica General I',5,1,1,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('FS200','Fisica General II',5,1,1,1);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IS412','	SISTEMAS OPERATIVOS I',5,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM202','CALCULO II',5,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM110','PRECALCULO',5,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM111','GEOMETRIA y TRIGONOMETRIA',5,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('SC101','SOCIOLOGIA',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IN301','INGLES I',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IS502','POO',5,0,0,1);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM411 ','ECUACIONES DIFERENCIALES',3,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM401','	ESTADISTICA I',3,1,0,1);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('EN011','Enf. Pres. y Futuro I',3,1,1,2);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI043','	Ecolog�a y Salud I',4,0,0,2);

----------------------------------------------
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IS110','INTRODUCCION A LA ING EN SISTEMAS',3,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM211','VECTORES Y MATRICES',3,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IN101','INGLES I',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM201','CALCULO I',5,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IN102','INGLES II',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM314','PROGRAMACION I',3,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('EG011','ESPA�OL GENERAL 1',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IS210','PROGRAMACION II',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('FF101','FILOSOFIA',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IN103','INGLES III',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('DQ101','DIBUJO I',2,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IS311','CIRCUITOS ELECTRICOS PARA IS',3,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM420','MATEMATICA DISCRETA',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('DQ102','DIBUJO II',2,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IS310','ALGORITMOS Y ESTRUCTURAS DE DATOS',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('HH101','HISTORIA DE HONDURAS',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IS410','PROGRAMACION ORIENTADA A OBJETOS',5,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IS501','BASE DE DATOS I',5,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IS601','BASE DE DATOS II',5,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IS411','ELECTRONICA PARA IS',3,0,0,1);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM116','INTRO. A LA COMPUTACION',3,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM502','VARIABLE COMPLEJA',3,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM412','ANALISIS NUMERICO',3,1,0,1);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI121','BIOLOGIA GENERAL 1',5,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM112','MATEMATICAS',5,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI122','BIOLOGIA GENERAL II',5,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI213','BIOESTADISTICA',5,1,1,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI210','ZOOLOGIA DE INVERTEBRADOS',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI221','BOTANICA GENERAL',4,0,1,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('QQ103','QUIMICA GENERAL',5,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI220','ZOOLOGIA DE VERTEBRADOS',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI313','TAXONOMIA VEGETAL I',4,0,1,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('QQ211','QUIMICA ANALITICA',6,0,0,1);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IQ100','INTRODUCCION A LA ING. QUIMICA',2,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('QQ115','QUIMICA GENERAL I',5,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('QQ215','QUIMICA GENERAL II',5,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('QQ225','QUIMICA ANALITICA CUANTITATIVA',5,1,0,1);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('QQ100','QUIMICA FUNDAMENTAL (L)',4,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IE221','CIRCUITOS ELECTRICOS I(L)',5,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('FS321','ELECTRICIDAD Y MAGNETISMO I (L)',5,1,0,1);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('EE101','Espa�ol General',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('EE210','Espa�ol General II',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('LS102','TEORIA SOCIOLOGICA',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('LS200','ORIGEN Y DESARROLLO DEL CAPITALISMO',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('LS212','INTRODUCCION A LA SOCIOLOGIA DEL DESARROLLO',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('LS213','INTRODUCCION A LA INVESTIGACION SOCIAL',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('LS214','LOGICA APLICADA A LAS CIENCIAS SOCIALES',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('LS103','TEORIA SOCIOLOGICA II',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('LS203','SOCIOLOGIA DEL DESARROLLO I',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('HH806','INTRODUCCION A LA COMPUTACION',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('AN101','ANTROPOLOGIA GENERAL',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('LS104','TEORIA SOCIOLOGICA III',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('LS204','SOCIOLOGIA DEL DESARROLLO II',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('SS102','ESTADISTICA SOCIAL',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('AN201','ANTROPOLOGIA SOCIAL',4,0,0,1);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('DET175','METODOS CUANTITATIVOS I',5,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IA012','INTRODUCCION A LA INFORMATICA',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('DET280','METODOS CUANTITATIVOS II',5,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('CF014','CONTABILIDAD I',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('CE020','PRINCIPIOS DE ECONOMIA',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IA023','TALLER DE HARDWARE I',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IA033','METODOLOGIA DE LA PROGRAMACION',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('DET385','METODOS CUANTITATIVOS III',5,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IA044','LENGUAJE DE PROGRAMACION I',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('CF030','METODOS CUANTITATIVOS EN FINANZAS',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('DAE300','ADMINISTRACION I',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IA054','TALLER DE HARDWARE II',4,0,0,1);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('QQ206','QUIMICA I',5,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('II111','INTRODUCCION A LA ING. INDUSTRIAL',2,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('II211','ESTADISTICA I',3,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('IM224','MECANICA PARA INGENIEROS I',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('II221','PROGRAMACION Y COMPUTACION',3,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('II222','ESTADISTICA APLICADA',3,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('DQ105','DIBUJO TECNICO INDUSTRIAL',2,0,0,1)

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('FS111','FISICA MEDICA',4,0,0,2);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('QQ111','QUIMICA MEDICA',5,0,0,2);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI123','BIOLOGIA MEDICA',5,0,0,2);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('QQ112','QUIMICA MEDICA II',5,0,0,2);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('FF206','ETICA',3,0,0,2);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('FS210','BIOFISICA',4,0,0,2);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM100','INTROD. A LA ESTADISTICA SOCIAL',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PA101','PEDAGOGIA GENERAL',5,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PA102','DIDACTICA GENERAL',5,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PA103','METODO. DE LA INVEST. EDUCATIVA I',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PA104','FILOSOFIA DE LA EDUCACION',3,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PS101','PSICOLOGIA GENERAL',5,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PA105','SOCIOLOGIA DE LA EDUCACION',3,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PA106','METODO DE LA INVEST. EDUCATIVA II',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PA107','ETICA PROFESIONAL',3,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PA108','POLITICA EDUCATIVA',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PA110','TEORIAS Y SISTEMAS EDUCATIVOS I',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PA124','SUPERVISION EDUCATIVA',4,0,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('PA112','PSICOLOGIA DEL DESARROLLO',4,0,0,1);


/*

CREATE TABLE ProyectoSistemaMatricula.unah.PlanEstudio(
														 idPlanEstudio INT PRIMARY KEY,
														 nombre VARCHAR(80),
														 duracionCarrera VARCHAR(25),
														 totalUV INT,
														 fechaRevision DATE,
														 cantidadClasesCarrera INT
														 );
SELECT * FROM ProyectoSistemaMatricula.unah.PlanEstudio
*/
INSERT INTO ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision, cantidadClasesCarrera) VALUES (1, 'Ingenieria en sistemas', '5 a�os', 225, '2005-07-03', 56);
INSERT INTO ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision, cantidadClasesCarrera) VALUES (2, 'Licenciatura en Matecaticas', '4 a�os', 250, '2018-03-10', 60);
INSERT INTO ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision, cantidadClasesCarrera) VALUES (3, 'Licenciatura en Biologia', '6 a�os', 180, '2004-03-02', 48);
INSERT INTO ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision, cantidadClasesCarrera) VALUES (4, 'Ingenieria Quimica', '5 a�os', 300, '2001-06-16', 56);
INSERT INTO ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision, cantidadClasesCarrera) VALUES (5, 'Ingenieria Electrica', '6 a�os', 210, '2015-12-17', 54);
INSERT INTO ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision, cantidadClasesCarrera) VALUES (6, 'Licenciatura en sociologia', '5 a�os', 212, '2007-02-23', 44);
INSERT INTO ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision, cantidadClasesCarrera) VALUES (7, 'Licenciatura en Informatica Administrativa', '4 a�os', 253, '2008-03-09', 48);
INSERT INTO ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision, cantidadClasesCarrera) VALUES (8, 'Ingenieria Industrial', '5 a�os', 354, '2006-09-27', 49);
INSERT INTO ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision, cantidadClasesCarrera) VALUES (9, 'Medicina', '10 a�os', 160, '2001-08-19',60);
INSERT INTO ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision, cantidadClasesCarrera) VALUES (10, 'Licenciatura en pedagogia', '4 a�os', 165, '2006-08-18', 44);


/*
CREATE TABLE ProyectoSistemaMatricula.unah.PensumAcademico(
															 idAsignatura  VARCHAR(15),
															 idPlanEstudio INT,
															 PRIMARY KEY(idAsignatura,idPlanEstudio),
															 FOREIGN KEY(idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura),
															 FOREIGN KEY(idPlanEstudio) REFERENCES ProyectoSistemaMatricula.unah.PlanEstudio(idPlanEstudio)
															 );

select * 
	from ProyectoSistemaMatricula.unah.PensumAcademico	
select * 
	from ProyectoSistemaMatricula.unah.PlanEstudio
select * 
	from ProyectoSistemaMatricula.unah.Asignatura
select * 
	from ProyectoSistemaMatricula.unah.Carrera
*/
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IS110',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM211',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN101',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM201',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN102',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM314',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('EG011',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IS210',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FF101',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN103',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('DQ101',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IS311',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM420',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('DQ102',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IS310',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('HH101',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IS410',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IS501',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IS601',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IS411',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FS100',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FS200',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN301',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IS412',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM110',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM111',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM202',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM401',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM411',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('SC101',1);

INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('EG011',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FF101',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('SC101',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('HH101',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM110',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM111',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM116',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM201',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM211',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM314',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM202',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM401',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM411',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM502',2);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM412',2);

INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('EG011',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FF101',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('SC101',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('HH101',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('BI121',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM112',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('BI122',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('BI213',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('BI210',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('BI221',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('QQ103',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('BI220',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('BI313',3);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('QQ211',3);

INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('EG011',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FF101',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('SC101',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('HH101',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM110',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM111',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IQ100',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN101',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM201',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM211',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('QQ115',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('DQ101',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN102',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FS100',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FS200',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM202',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('QQ215',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN103',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM401',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM314',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM411',4);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('QQ225',4);

INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('EG011',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FF101',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('SC101',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('HH101',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM110',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM111',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM201',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM211',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN101',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM202',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('QQ100',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('DQ101',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN102',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FS100',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM314',5);
--INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IE210',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN103',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM411',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FS200',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IE221',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM401',5);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FS321',5);

INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('SC101',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FF101',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('HH101',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('EE101',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('LS102',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('LS200',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('LS212',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('LS213',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('LS214',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('LS103',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('LS203',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('HH806',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('AN101',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('LS104',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('LS204',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('SS102',6);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('AN201',6);

INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('EG011',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FF101',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('SC101',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('HH101',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN101',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('DET175',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IA012',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('DET280',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('CF014',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('CE020',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IA023',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IA033',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('DET385',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IA044',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('CF030',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('DAE300',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IA054',7);

INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('EG011',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FF101',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('SC101',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('HH101',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM110',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM111',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM201',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM211',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('QQ206',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('II111',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM202',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN101',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FS100',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM411',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('II211',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('DQ101',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN102',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FS200',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IM224',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('II221',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('II222',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('DQ105',8);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN103',8);

INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('EG011',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FF101',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('SC101',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('HH101',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FS111',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('QQ111',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM112',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN101',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('BI123',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('QQ112',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FF206',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IN102',9);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FS210',9);

INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('EG011',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('FF101',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('SC101',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('HH101',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('MM100',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PA101',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PA102',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PA103',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PA104',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PS101',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PA105',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PA106',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PA107',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PA108',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PA110',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PA124',10);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('PA112',10);

/*
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

SELECT * 
	FROM ProyectoSistemaMatricula.unah.Requisitos
*/
--INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM211',1,'MM-110',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM201',1,'MM110','MM111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IN102',1,'IN101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM314',1,'MM110','IS110');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IS210',1,'MM314',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IN103',1,'IN102',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('DQ101',1,'MM211',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IS311',1,'MM411','FS100');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM420',1,'MM314','FF101');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('DQ102',1,'DQ101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IS310',1,'IS210',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IS410',1,'IS310',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IS501',1,'MM401','IS410');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IS601',1,'IS501',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IS411',1,'IS311',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('FS100',1,'MM201','MM211');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('FS200',1,'FS100',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IS412',1,'IS310','MM420');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM202',1,'MM201',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM401',1,'MM202',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM411',1,'MM202',NULL);

INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM201',2,'MM110','MM111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM211',2,'MM110','MM111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM314',2,'MM211',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM202',2,'MM201',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM401',2,'MM201',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM411',2,'MM202',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM502',2,'MM202',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM412',2,'MM411','MM314');

INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('BI122',3,'BI121',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('BI213',3,'MM112',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('BI210',3,'BI122',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('BI221',3,'BI122',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('BI220',3,'BI210',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('BI313',3,'BI221',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('QQ211',3,'QQ103',NULL);

INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM201',4,'MM110','MM111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM211',4,'MM110','MM111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('QQ115',4,'MM110','IQ100');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('DQ101',4,'MM111',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IN102',4,'IN101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('FS100',4,'MM201',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('FS200',4,'FS100','MM202');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM202',4,'MM201',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('QQ215',4,'QQ115','MM201');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IN103',4,'IN102',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM401',4,'MM201',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM314',4,'MM211',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM411',4,'MM202',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('QQ225',4,'QQ215',NULL);

INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM201',5,'MM110','MM111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM211',5,'MM110','MM111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM202',5,'MM201',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('QQ100',5,'MM100','MM111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('DQ101',5,'MM110',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IN102',5,'IN101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('FS100',5,'MM201',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM314',5,'MM211',NULL);
--INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IE210',5,'MM201',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IN103',5,'IN102',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM411',5,'MM202',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('FS200',5,'FS100',NULL);
--INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IE221',5,'IE210','MM411');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('FS321',5,'FS200','MM411');

INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('LS102',6,'SC101','FF101');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('LS200',6,'SC101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('LS212',6,'SC101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('LS213',6,'SC101','FF101');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('LS214',6,'SC101','FF101');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('LS103',6,'LS102','LS200');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('LS203',6,'LS200','LS212');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('HH806',6,'LS214',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('LS104',6,'LS103',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('LS204',6,'LS203',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('SS102',6,'LS214',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('AN201',6,'AN101',NULL);


INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IA012',7,'DET175',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('DET280',7,'DET175',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('CF014',7,'DET175',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('CE020',7,'DET175',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IA023',7,'IA012',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IA033',7,'IA012','DET175');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('DET385',7,'DET280',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IA044',7,'IA033',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('CF030',7,'DET280',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('DAE300',7,'SC101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IA054',7,'IA054',NULL);

INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM201',8,'MM110','MM111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM211',8,'MM110','MM111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('QQ206',8,'MM110','MM111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM202',8,'MM201',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('FS100',8,'MM201','MM211');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('MM411',8,'MM202',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('II211',8,'MM202','II111');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('DQ101',8,'MM111',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IN102',8,'IN101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('FS200',8,'FS100','MM202');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IM224',8,'FS100','MM202');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('II221',8,'MM202',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('II222',8,'II211',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('DQ105',8,'DQ101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IN103',8,'IN102',NULL);

INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('QQ112',9,'QQ111','MM112');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('FF206',9,'FF101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IN102',9,'IN101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('FS210',9,'FS111','BI123');

INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('PA102',10,'PA101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('PA103',10,'MM100',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2)VALUES('PA104',10,'FF101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('PA105',10,'SC101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('PA106',10,'PA103',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('PA107',10,'PA104',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('PA108',10,'PA104',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('PA110',10,'PA101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('PA124',10,'PA101',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('PA112',10,'PA101',NULL);

/*
CREATE TABLE ProyectoSistemaMatricula.unah.Edificio(
													  idCodigoEdificio VARCHAR(25) PRIMARY KEY,
													  edificio VARCHAR(45),
													  fechaFundacion DATE,
													  observacion VARCHAR(300),
													  idCentroUniversitario INT,
													  FOREIGN KEY(idCentroUniversitario) REFERENCES ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro)
													  );
SELECT * 
	FROM ProyectoSistemaMatricula.unah.Edificio
*/

INSERT INTO ProyectoSistemaMatricula.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('B2','Facultad de Ingenieria','1980-01-15','Edificio Principal de Ingenieria ',1);

INSERT INTO ProyectoSistemaMatricula.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('B1','Facultad de Ingenieria','1985-01-15','Edificio de Talleres de Ingenieria ',1);

INSERT INTO ProyectoSistemaMatricula.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('D1','Facultad de Humanidades y Artes','1990-01-15','Edificio de Area Social',1);

INSERT INTO ProyectoSistemaMatricula.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('F1','Facultad de Humanidades y Artes','1995-01-15','Edificio de Area Social',1);
INSERT INTO ProyectoSistemaMatricula.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('C1','Facultad de Ciencia Economica','1990-01-15','Edificio de ciencias econimicas',1);

INSERT INTO ProyectoSistemaMatricula.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('C2','Facultad de Ciencia Economicas','1995-01-15','Edificio de ciencias econimicas',1);
INSERT INTO ProyectoSistemaMatricula.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('G1','Facultad de Odontologia','1990-01-15','Edificio de odontologia',1);

INSERT INTO ProyectoSistemaMatricula.unah.Edificio( idCodigoEdificio ,  edificio,fechaFundacion,observacion,idCentroUniversitario) VALUES
											('H1','Facultad de Quimica y farmacia','2005-01-15','Edificio de quimica y farmacia ',1);
/*
CREATE TABLE ProyectoSistemaMatricula.unah.Aula(
												  idCodigoAula VARCHAR(25),
												  idCodigoEdificio VARCHAR(25),
												  cantidadMaximaDeEstudiante INT,
												  observacion VARCHAR(300),
												  PRIMARY KEY(idCodigoAula,idCodigoEdificio),												  
												  FOREIGN KEY(idCodigoEdificio) REFERENCES ProyectoSistemaMatricula.unah.Edificio(idCodigoEdificio)
												  );
SELECT * 
	FROM ProyectoSistemaMatricula.unah.Aula
*/

INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','B2',30,'Acondionada para Data show');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','B1',45,'');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','D1',50,'');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','F1',70,'Acondicionado con conexion ethernel');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','C2',25,'');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','C1',45,'Mobiliario soldado al piso');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','G1',55,'');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('101','H1',45,'');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('202','B2',30,'Acondionada para Data show');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('409','B1',45,'');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('402','D1',55,'');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('113','F1',70,'Acondicionado con conexion ethernel');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('218','C2',25,'');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('115','C1',45,'Mobiliario soldado al piso');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('108','G1',55,'');
INSERT INTO  ProyectoSistemaMatricula.unah.Aula(idCodigoAula , idCodigoEdificio, cantidadMaximaDeEstudiante,  observacion) VALUES
										('203','H1',45,'');
/*			 						
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idCodigoAula, idCodigoEdificio, cantidadMaximaDeEstudiante, observacion) VALUES (1, 'A1', '60', NULL);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idCodigoAula, idCodigoEdificio, cantidadMaximaDeEstudiante, observacion) VALUES (2, '402', '60', NULL);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idCodigoAula, idCodigoEdificio, cantidadMaximaDeEstudiante, observacion ) VALUES (3, '409', '60', NULL);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idCodigoAula, idCodigoEdificio, cantidadMaximaDeEstudiante, observacion  ) VALUES (4, '410', '60', NULL);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idCodigoAula, idCodigoEdificio, cantidadMaximaDeEstudiante, observacion  ) VALUES (5, '301', '60', NULL);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idCodigoAula, idCodigoEdificio, cantidadMaximaDeEstudiante, observacion  ) VALUES (6, '306', '60', NULL);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idCodigoAula, idCodigoEdificio, cantidadMaximaDeEstudiante, observacion  ) VALUES (7, '102', '35', 'Laboratorio');	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idCodigoAula, idCodigoEdificio, cantidadMaximaDeEstudiante, observacion ) VALUES (8, '101', '45', 'Laboratorio');	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idCodigoAula, idCodigoEdificio, cantidadMaximaDeEstudiante, observacion  ) VALUES (9, '112', '60', NULL);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idCodigoAula, idCodigoEdificio, cantidadMaximaDeEstudiante, observacion ) VALUES (10, '111', '60', NULL);	 

*/
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad,  idEdificio, idCentroUniversitario) VALUES (1, 'Facultad De Ingenieria', 'B2', 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad,  idEdificio, idCentroUniversitario) VALUES (2, 'Facultad Ciencias Sociales',  'G1', 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad,  idEdificio, idCentroUniversitario) VALUES (3, 'Facultad Qu�mica y Farmacia', 'B2', 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad,  idEdificio, idCentroUniversitario) VALUES (4, 'Facultad Medicina', 'G1', 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad,  idEdificio, idCentroUniversitario) VALUES (5, 'Facultad Odontolog�a',  'G1', 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad,  idEdificio, idCentroUniversitario) VALUES (6, 'Facultad Ciencias Jur�dicas',  'D1', 1);					  
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad,  idEdificio, idCentroUniversitario) VALUES (7, 'Facultad Humanidades y Artes',  'D1', 1);					  
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad,  idEdificio, idCentroUniversitario) VALUES (8, 'Facultad Ciencias Espaciales',  'H1', 1);					  

/*				  
	SELECT *
	FROM ProyectoSistemaMatricula.unah.GruposEtnico			 
*/			

INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (1, 'Mestizo');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (2, 'Los Pech');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (3, 'Los Tawahkas');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (4, 'Tolupan');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (5, 'Los Lencas');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (6, 'Misquito');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (7, 'Los Chort�s');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (8, 'Los Gar�funas');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (9, 'Ninguno');


INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (1, 'Vista');
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (2, 'Fisica');
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (3, 'Motora');
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (4, 'Ninguna');

INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (1, 'Hondure�o');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (2, 'Salvadore�o');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (3, 'Mexicano');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (4, 'Costarisense');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (5, 'Argentino');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (6, 'Peruano');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (7, 'Frances');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (8, 'Coreano');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (9, 'Guatemalteco');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (10, 'Japones');

INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (1, 'Casado');
INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (2, 'Soltero');
INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (3, 'Union libre');



INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (1, 'Femenino');
INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (2, 'Masculino');


INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (1, 'Mama');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (2, 'Papa');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (3, 'tio');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (4, 'sobrino');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (5, 'Primo');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (6, 'prima');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (7, 'hermano');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (8, 'hermana');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (9, 'abuelo');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (10, 'abuela');


INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (1, 'Andrea Martinez', '99876543', 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (2, 'Pedro Fonseca', '77896543', 2);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (3, 'Sergio Perez', '94010099', 3);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (4, 'Marisa Rodriguez', '52249909', 4);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (5, 'Manuel Rivera', '22345678', 5);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (6, 'Rosalba Avila', '9874950', 6);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (7, 'Enma Perez', '80586677', 7);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (8, 'Daniel Caceres', '99674833', 8);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (9, 'Cesar Martinez', '9966542', 9);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (10, 'Reyna sauceda', '996606747', 10);

INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (1, 'mbollini0@wikimedia.org', 'ldelhanty0@unah.hn');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (2, 'rcleatherow1@gmpg.org', 'calkins1@unah.hn');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (3, 'cobern2@tinyurl.com', 'kaylwin2@unah.hn');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (4, 'hbarca3@patch.com', 'cjaeggi3@unah.hn');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (5, 'ttolomio4@t-online.de', 'sdarwin4@unah.hn');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (6, 'bfoulds5@webmd.com', 'rdowbiggin5@unah.hn');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (7, 'bmaggillandreis6@dagondesign.com', 'kfairbeard6@unah.hn');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (8, 'dspinnace7@ifeng.com', 'chastewell7@unah.hn');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (9, 'dleclaire8@arizona.edu', 'sburroughes8@unah.hn');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (10, 'hedmondson9@vistaprint.com', 'atunnow9@dunah.hn');



INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (080119930089, 'David', 'Alexander', 'Palacios', 'Reyes', 1, 2, 1, '2012-12-06', 1, 4, 1, 1, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (160119930089, 'Luis', 'Fernando', 'Estrada', 'Euceda', 2, 2, 2, '1999-10-11', 2, 4, 2, 2, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (308011993008, 'Katherine', 'Brittany', 'Perez', 'Blaine', 3, 2, 3, '2009-07-22', 3, 4, 3, 3, 3);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (408011993008, 'Ruperta', 'Maria', 'Chacon', 'Haven', 4, 2, 1, '1996-02-19', 4, 4, 4, 4, 4);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (083119930089, 'De', 'Michaela', 'Mendy', 'Cobby', 5, 1, 3, '1982-06-22', 5, 4, 5, 5, 5);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (120119930089, 'Bibi', 'Petronila', 'Martinez', 'Aguilar', 6, 1, 2, '1994-10-31', 6, 4, 6, 6, 6);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (082119930089, 'Diana', 'Sofia', 'Bonilla', 'Morales', 7, 1, 2, '1984-08-16', 7, 4, 7, 7, 7);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (081719930089, 'Timmy', 'Esther', 'Salgado', 'Ponce', 8, 1, 1, '1983-08-13', 8, 4, 8, 8, 8);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (800119930089, 'Evelin', 'Josselin', 'Juarez', 'Gonzales', 9, 1, 2, '1990-03-18', 9, 1, 9, 9, 9);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (108011993008, 'Marina', 'Jose', 'Gutierrez', 'Flores', 10, 1, 1, '1995-02-20', 8, 1, 10, 10, 10);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES(210801199300, 'Angel ', 'David', 'Dudley', 'Shayne', 1, 1, 2, '1995-02-20', 1, 2, 10, 10, 10);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (165119930089, 'Mariela', 'Petronila', 'Martinez', 'Aguilar', 6, 1, 2, '1994-10-31', 6, 4, 6, 6, 6);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (892119930089, 'Ricccy', 'Sofia', 'Bonilla', 'Morales', 7, 1, 2, '1984-08-16', 7, 4, 7, 7, 7);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (187199300897, 'Joel', 'Antonio', 'Salgado', 'Ponce', 8, 1, 1, '1983-08-13', 8, 4, 8, 8, 8);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (090101199300, 'Evelin', 'Danelia', 'Juarez', 'Gonzales', 9, 1, 2, '1990-03-18', 9, 1, 9, 9, 9);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (2080119930089, 'Mario', 'Jose', 'Gutierrez', 'Flores', 10, 1, 1, '1995-02-20', 8, 1, 10, 10, 10);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (3457801199300, 'Gabriela ', 'Jissel', 'Maradiaga', 'Shayne', 1, 1, 2, '1995-02-20', 1, 2, 10, 10, NULL);

/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.Persona
*/
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (1, '8761668', 080119930089);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (2, '88345662', 160119930089);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (3, '562374', 308011993008);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (4, '8825064', 408011993008);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (5, '8877525', 083119930089);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (6, '88452327', 120119930089 );
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (7, '8842932', 082119930089);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (8, '98654257', 800119930089);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (9, '99432988', 108011993008);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (10, '99432161', 210801199300 );
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (12, '7977525', 165119930089);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (13, '66452327', 892119930089);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (14, '67842932', 187199300897);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (15, '338654257', 090101199300);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (16, '889432988', 2080119930089);

---------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO ProyectoSistemaMatricula.unah.TipoEmpleado (idTipoEmpleado, descripcion) VALUES (1, 'Administrativo');
INSERT INTO ProyectoSistemaMatricula.unah.TipoEmpleado (idTipoEmpleado, descripcion) VALUES (2, 'Docensia');

--------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO ProyectoSistemaMatricula.unah.Cargo (idCargo, tipoCargo) VALUES (1, 'Docente');
INSERT INTO ProyectoSistemaMatricula.unah.Cargo (idCargo, tipoCargo) VALUES (2, 'Coordinador Clase');
INSERT INTO ProyectoSistemaMatricula.unah.Cargo (idCargo, tipoCargo) VALUES (3, 'Jefe Departamento');


-----------------------------------------------------------------------------------------------------------------------

INSERT INTO ProyectoSistemaMatricula.unah.Contrato (idContrato, descripcion) VALUES (1, 'Por hora');
INSERT INTO ProyectoSistemaMatricula.unah.Contrato (idContrato, descripcion) VALUES (2, 'Permanente');

-----------------------------------------------------------------------------------------------------------------------------------------

/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.PlanEstudio*/
-----------------------------------------------------------------------------------------------------------

INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (1, 'Ing. Sistemas', '1', '1999-12-19', 1, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (2, 'Matematicas', '1', '1992-05-04', 2, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (3, 'Lic. Biologia', '1', '1992-09-18', 3, 3);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (4, 'Ing. Quimica', '1', '1990-06-21', 3, 4);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (5, 'Ing. Electrica', '1', '1992-01-09', 2, 5);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (6, 'Lic. Sociologia', '1', '2000-01-10', 1, 6);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (7, 'Lic. Informatica', '1', '1993-01-21', 2, 7);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (8, 'Ing. Industrial', '1', '1996-05-16', 3, 8);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (9, 'Medicina', '1', '1995-02-10', 2, 9);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (10, 'Lic.Pedagogia', '1', '1997-03-01', 1, 10);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (11, 'Lic. Historia', '1', '1999-12-19', 1, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (12, 'Abogado', '1', '1992-05-04', 2, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (13, 'Lenguas Extranjeras', '1', '1992-09-18', 3, 3);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (14, 'Lic. Letras', '1', '1990-06-21', 5, 4);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (15, 'Lic. Periodismo', '1', '1992-01-09', 6, 5);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (16, 'Lic Fisica', '1', '2000-01-10', 1, 6);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (17, 'Lic. Educacion Fisica', '1', '1993-01-21', 2, 7);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (18, 'Lic.Aduanas', '1', '1996-05-16', 3, 8);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (19, 'Lic. en Mercadotecnia', '1', '1995-02-10', 2, 9);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (20, 'Lic. Aministracion de Empresas', '1', '1997-03-01', 1, 10);

/*
SELECT * 
	FROM ProyectoSistemaMatricula.unah.Carrera
---------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT *
	FROM ProyectoSistemaMatricula.unah.Carrera
*/

INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (1, '2018-07-02', NULL, 080119930089, 1, 1, 2, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (2, '2017-07-02', NULL, 160119930089, 2, 2, 3, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (3, '2016-07-02', NULL, 308011993008, 1, 3, 3, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (4, '2017-07-27','2020-05-02', 408011993008, 2, 4, 1, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (6, '2019-07-02', NULL, 083119930089, 2, 6, 1, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (7, '2018-07-02', NULL, 120119930089, 1, 7, 1, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (8, '2015-07-02', '2018-07-02', 082119930089, 1, 8, 1, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (9, '2017-07-02', NULL, 081719930089, 1, 9, 1, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (10, '2017-07-02', '2020-07-02', 800119930089, 2, 10, 1, 1);

/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.Empleado
*/

INSERT INTO ProyectoSistemaMatricula.unah.Docente(idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) VALUES (1, '2019-01-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Docente(idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) VALUES (2, '2017-01-01', NULL, NULL, NULL, NULL, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) VALUES (3, '2018-01-01', NULL, NULL, NULL, NULL, 3);
INSERT INTO ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) VALUES (4, '2019-01-01', NULL, NULL, NULL, NULL, 4);
INSERT INTO ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) VALUES (5, '2018-09-01', NULL, NULL, NULL, NULL, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) VALUES (6, '2016-01-01', NULL, NULL, NULL, NULL, 6);
INSERT INTO ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) VALUES (7, '2014-01-01', NULL, NULL, NULL, NULL, 7);
INSERT INTO ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) VALUES (8, '2013-01-01', NULL, NULL, NULL, NULL, 8);
INSERT INTO ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) VALUES (9, '2015-01-01', NULL, NULL, NULL, NULL, 9);
INSERT INTO ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) VALUES (10, '2017-01-01', NULL, NULL, NULL, NULL, 10);

/*
CREATE TABLE ProyectoSistemaMatricula.unah.Periodo( 
													idPeriodo CHAR(3),
													fechaInicio DATE,
													idTipoPeriodo INT,
													fechaFinalizacion DATE,
													anio INT,
													PRIMARY KEY(idPeriodo,fechaInicio,idTipoPeriodo),
													FOREIGN KEY(idTipoPeriodo) REFERENCES ProyectoSistemaMatricula.unah.TipoPeriodo(idTipoPeriodo)
													);

SELECT *
	FROM ProyectoSistemaMatricula.unah.Periodo
*/

INSERT INTO ProyectoSistemaMatricula.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('I','2020-01-01',001,'2020-04-30',2020);

INSERT INTO ProyectoSistemaMatricula.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('I','2020-01-01',002,'2020-06-30',2020);

INSERT INTO ProyectoSistemaMatricula.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('II','2020-05-01',001,'2020-09-30',2020);

INSERT INTO ProyectoSistemaMatricula.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('II','2020-07-01',002,'2020-12-22',2020);

/*	
CREATE TABLE ProyectoSistemaMatricula.unah.TipoSeccion (
														idTipoSeccion INT PRIMARY KEY,
														tipo VARCHAR (25)
												);
SELECT * 
	FROM ProyectoSistemaMatricula.unah.TipoPeriodo
*/

INSERT INTO  ProyectoSistemaMatricula.unah.TipoSeccion (idTipoSeccion ,tipo) VALUES 	(001,'PRESENCIAL');
INSERT INTO  ProyectoSistemaMatricula.unah.TipoSeccion (idTipoSeccion ,tipo) VALUES 	(002,'VIRTUAL');
INSERT INTO  ProyectoSistemaMatricula.unah.TipoSeccion (idTipoSeccion ,tipo) VALUES 	(003,'LABORATORIO');	
			
/*
CREATE TABLE ProyectoSistemaMatricula.unah.ObservacionNotaFinal(
																   idObservacionNotaFinal VARCHAR(3) PRIMARY KEY NOT NULL,
																   descripcion VARCHAR(25)
																   );
SELECT * 
	FROM ProyectoSistemaMatricula.unah.ObservacionNotaFinal
*/

INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('APR','APROBADO');
INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('RPB','REPROBADO');
INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('ABN','ABANDONO');
INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('NPS','NO SE PRESENTO');
--INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('CAN','CANCELADA');

/*
DELETE ProyectoSistemaMatricula.unah.ObservacionNotaFinal
WHERE idObservacionNotaFinal = 'CAN'
*/

/*
CREATE TABLE ProyectoSistemaMatricula.unah.Dias (
													idDias INT PRIMARY KEY ,
													descripcionDias VARCHAR(25)
													);
SELECT * 
	FROM ProyectoSistemaMatricula.unah.Dias
*/

INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (001,'LuMaMiJuViSa');
INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (002,'LuMaMiJuVi');
INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (003,'LuMaMiJu');
INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (004,'LuMaMi');
INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (005,'LuMi');
INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (006,'MaJu');
INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (007,'Lu');
INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (008,'Ma');
INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (009,'Mi');
INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (010,'Ju');
INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (011,'Vi');
INSERT INTO ProyectoSistemaMatricula.unah.Dias (idDias ,descripcionDias) VALUES (012,'Sa');

/*
CREATE ALTER TABLE ProyectoSistemaMatricula.unah.Seccion(
													 idAsignatura  VARCHAR(15),
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
													 PRIMARY KEY(idAsignatura,idSeccion),
													 --FOREIGN KEY(idDocente,fechaInicioCargo) REFERENCES ProyectoSistemaMatricula.unah.Docente(idDocente,fechaInicioCargo),
													 FOREIGN KEY(idDias) REFERENCES ProyectoSistemaMatricula.unah.Dias(idDias),
													 FOREIGN KEY(idAsignatura) REFERENCES ProyectoSistemaMatricula.unah.Asignatura(idAsignatura),
													 FOREIGN KEY(idTipoSeccion) REFERENCES ProyectoSistemaMatricula.unah.tipoSeccion(idTipoSeccion),
													 FOREIGN KEY(idCodigoAula,idCodigoEdificio) REFERENCES ProyectoSistemaMatricula.unah.Aula(idCodigoAula,idCodigoEdificio),
													 FOREIGN KEY(idPeriodo,fechaInicioPeriodo,idTipoPeriodo) REFERENCES ProyectoSistemaMatricula.unah.Periodo(idPeriodo,fechaInicio,idTipoPeriodo)
													 ); 
*/

/*
SELECT * FROM ProyectoSistemaMatricula.unah.Asignatura
SELECT * FROM ProyectoSistemaMatricula.unah.Dias
SELECT * FROM ProyectoSistemaMatricula.unah.TipoPeriodo
SELECT * FROM ProyectoSistemaMatricula.unah.TipoSeccion
SELECT * FROM ProyectoSistemaMatricula.unah.Docente
*/

INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('FS100','0700',0700,0800,002,'101','B2',' Clase presencial ',30,
												001,001,'2019-01-01','I','2020-01-01',001);

INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('FS200','0900',0900,1000,002,'101','C2',' Clase presencial ',40,
												001,001,'2019-01-01','I','2020-01-01',001);

INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('FS200','1000',1000,1200,008,'101','F1','Seccion de laboratorio',30,
												003,001,'2019-01-01','I','2020-01-01',001);


INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('EN011','0800',0800,0900,004,'101','H1','Clase presencial',35,
												001,001,'2019-01-01','I','2020-01-01',002);


INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('BI043','1100',1100,1200,005,'101','H1','Clase presencial',65,
												001,001,'2019-01-01','I','2020-01-01',002);

INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('EG011','0700',0700,0800,003,'101','F1','Clase presencial',65,
												001,001,'2019-01-01','I','2019-01-01',001);
INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('EG011','0600',0700,0800,003,'101','F1','Clase presencial',65,
												001,001,'2019-01-01','I','2020-01-01',001);
INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('FF101','0900',0900,1000,003,'101','D1','Clase presencial',65,
												001,001,'2019-01-01','I','2019-01-01',001);
INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('HH101','1000',1000,1100,003,'101','D1','Clase presencial',65,
												001,001,'2019-01-01','I','2019-01-01',001);
INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('IN101','1100',1100,1200,003,'115','C1','Clase presencial',65,
												001,001,'2019-01-01','II','2019-05-22',001);
INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('MM110','0700',0700,0800,003,'101','D1','Clase presencial',65,
												001,001,'2019-01-01','II','2019-05-22',001);
INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('MM111','1000',1000,1100,003,'101','F1','Clase presencial',65,
												001,001,'2019-01-01','II','2019-05-22',001);

											SELECT * FROM ProyectoSistemaMatricula.unah.Aula
SELECT * 
	FROM  ProyectoSistemaMatricula.unah.Seccion

INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (1, '690', '76823', '8');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (2, '843', '6', '00');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (3, '509', '07908', '975');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (4, '1219', '61', '551');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (5, '1099', '71', '2944');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (6, '675', '0', '6');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (7, '634', '50', '573');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (8, '278', '07', '3385');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (9, '607', '3245', '1');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (10, '694', '63506', '65025');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (11, '1000', '63506', '65025');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (12, '1046', '63506', '65025');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (13, '987', '63506', '65025');
INSERT INTO ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) VALUES (14, '1600', '63506', '65025');


/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.Estudiante
*/

INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20191018932', 1, '25', 'PH', 1, 210801199300, 1, 1, 1, 0); ---- Si ingreso un numero asi como el num de cuenta el idestudiante se me desborda
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20197619851', 1, '27', 'PH', 2, 165119930089, 0, 0, 2, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20185629087', 0, '20', 'CN', 3, 892119930089, 0, 0, 3, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20209306965', 0, '10', 'CY', 4, 187199300897, 1, 1, 4, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20118976876', 1, '15', 'NA', 5, 090101199300, 1, 0, 1, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20183127865', 1, '18', 'CN', 6, 2080119930089, 0, 1, 6, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20191299054', 1, '17', 'CN', 7, 081719930089, 0, 1, 7, 0);---
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20209871290', 0, '14', 'PH', 8, 160119930089, 1, 0, 8, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20191017854', 0, '12', 'PH', 9, 308011993008, 1, 0, 9, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20181985678', 0, '45', 'uu', 10, 408011993008, 0, 1, 10, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20173452710', 0, '25', 'TT', 11, 083119930089, 0, 1, 10, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20201235684', 0, '25', 'JJ', 11, 120119930089, 0, 1, 10, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20297653456', 0, '25', 'OO', 11, 082119930089, 0, 1, 10, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('20178905411', 0, '25', 'ss', 11, 081719930089, 0, 1, 10, 0);

UPDATE ProyectoSistemaMatricula.unah.Estudiante
	SET idCentro = 1

/*
UPDATE ProyectoSistemaMatricula.unah.Estudiante
   SET idCentro = 1 

SELECT *
	FROM ProyectoSistemaMatricula.unah.Estudiante
*/
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES ('20191018932', '87', '19', '20191018932');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES ('20197619851', '65', '70', '20197619851');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES ('20185629087', '42', '84',  '20185629087');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES ('20209306965', '78', '42', '20209306965');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES ('20118976876', '80', '53', '20118976876');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES ('20183127865', '67', '100', '20183127865');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES ('20191299054', '45', '29', '20191299054');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES ('20209871290', '94', '90', '20209871290');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES ('20191017854', '65', '70', '20191017854');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES ('20181985678', '82', '63','20181985678');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES ('20173452710', NULL, NULL, '20173452710');


/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.HistorialAcademico
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*/

INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (1, 1, '2020-01-01', '2020-01-29', 'I','2020-01-01', 2, '20191018932', '20191018932');
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (2, 0, '2020-07-14', '2020-04-10','I','2020-01-01', 2, '20197619851', '20197619851');
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (3, 1, '2020-07-09', '2019-09-05', 'I', '2020-01-01', 2, '20185629087', '20185629087');
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (4, 1, '2020-06-05', '2020-03-03','II', '2020-05-01', 1, '20209306965', '20209306965');
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (5, 1, '2020-05-19', '2020-02-24','I','2020-01-01',1 , '20118976876' , '20118976876');
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (6, 0, '2020-08-12', '2020-01-25','II', '2020-05-01', 1, '20183127865', '20183127865');
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (7, 0, '2020-07-28', '2019-11-28', 'II', '2020-05-01', 1, '20191299054', '20191299054');
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (8, 0, '2020-06-01', '2019-11-11','I','2020-01-01', 2, '20209871290', '20209871290');
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (9, 1, '2020-06-17', '2019-12-15','II', '2020-05-01', 1, '20191017854' , '20191017854' );
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (10, 1, '2020-06-17', '2019-12-15','II', '2020-05-01', 1 ,'20181985678' , '20181985678');
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (11, 1, '2020-06-17', '2019-12-15','II', '2020-05-01', 1, '20173452710', '20173452710');

INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES 
													(12, 1, '2019-01-10', '2019-01-20','I','2019-01-01',1 , '20118976876' , '20118976876');
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES 
													(13, 1, '2019-05-25', '2019-06-2','II','2019-05-22',1 , '20118976876' , '20118976876');
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES 
													(14, 1, '2020-01-01', '2020-01-15','I','2020-01-01',1 , '20201235684' , '20201235684');

/*
	SECCION MATRICULA
*/

SELECT * FROM ProyectoSistemaMatricula.unah.SeccionMatricula
SELECT * FROM ProyectoSistemaMatricula.unah.Matricula
SELECT * FROM ProyectoSistemaMatricula.unah.Seccion
SELECT * FROM ProyectoSistemaMatricula.unah.Estudiante

INSERT INTO ProyectoSistemaMatricula.unah.SeccionMatricula(idMatricula,idAsignatura,idSeccion,notaFinal,idObservacionNota) 
			VALUES (12,'EG011','0700',95,'APR')
INSERT INTO ProyectoSistemaMatricula.unah.SeccionMatricula(idMatricula,idAsignatura,idSeccion,notaFinal,idObservacionNota) 
			VALUES (12,'FF101','0900',92,'APR')
INSERT INTO ProyectoSistemaMatricula.unah.SeccionMatricula(idMatricula,idAsignatura,idSeccion,notaFinal,idObservacionNota) 
			VALUES (12,'HH101','1000',99,'APR')
INSERT INTO ProyectoSistemaMatricula.unah.SeccionMatricula(idMatricula,idAsignatura,idSeccion,notaFinal,idObservacionNota) 
			VALUES (13,'IN101','1100',100,'APR')
INSERT INTO ProyectoSistemaMatricula.unah.SeccionMatricula(idMatricula,idAsignatura,idSeccion,notaFinal,idObservacionNota) 
			VALUES (13,'MM110','0700',82,'APR')