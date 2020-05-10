---Insertar Datos Demograficos
--------------------------------------------------------------------------
/*CREATE TABLE ProyectoSistemaMatricula.unah.Continente (
														idContinente INT PRIMARY KEY,
														continente VARCHAR(45)
														);
														
SELECT *
FROM  ProyectoSistemaMatricula.unah.Continente	
														
														*/

INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente) VALUES (1,'America');
INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente) VALUES (2,'Europa');
INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente)VALUES (3,'Asia');
INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente)VALUES (4,'Africa');
INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente)VALUES (5,'Oceania');


SELECT *
FROM ProyectoSistemaMatricula.unah.Pais

/*
CREATE TABLE ProyectoSistemaMatricula.unah.Pais (
												  codigoPais VARCHAR(6)  PRIMARY KEY,
												  pais VARCHAR(45),
												  idContinente INT,
												  FOREIGN KEY(idContinente) REFERENCES ProyectoSistemaMatricula.unah.Continente(idContinente)
												  );

SELECT * FROM ProyectoSistemaMatricula.unah.Pais
*/

INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('HN', 'Honduras',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('SV', 'El Salvador',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('GT', 'Guatemala',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('MX', 'Mexico',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('RU', 'Russia',2);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('CN', 'China',3);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('EC', 'Ecuador',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('ID', 'Indonesia',3);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('PY', 'Paraguay',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('SP', 'España',2);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('FR', 'France',2);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('CA', 'Canada',1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('MD', 'Madagascar',4);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('ML', 'Malasia',4);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('MC', 'Micronesia',5);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (codigoPais, Pais, idContinente) values ('NR', 'Nauru',5);



/*

CREATE TABLE ProyectoSistemaMatricula.unah.Departamento(
														  idDepartamento INT PRIMARY KEY,
														  departamento VARCHAR(45),
														  codigoPais VARCHAR(6),
														  FOREIGN KEY(codigoPais) REFERENCES ProyectoSistemaMatricula.unah.Pais(codigoPais)
														  );


SELECT * FROM ProyectoSistemaMatricula.unah.Departamento
*/

SELECT *
FROM ProyectoSistemaMatricula.unah.Departamento

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


SELECT *
FROM ProyectoSistemaMatricula.unah.Departamento



/*

CREATE TABLE ProyectoSistemaMatricula.unah.Municipio(
													   idMunicipio INT PRIMARY KEY,
													   municipio VARCHAR(45),
													   idDepartamento INT,
													   FOREIGN KEY(idDepartamento) REFERENCES ProyectoSistemaMatricula.unah.Departamento(idDepartamento)
													   );

SELECT * FROM ProyectoSistemaMatricula.unah.Municipio
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

SELECT * FROM ProyectoSistemaMatricula.unah.Direccion
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


SELECT *
FROM ProyectoSistemaMatricula.unah.Aula

INSERT INTO ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro, centroUniversitario, sigla, fechaFundacion, idDireccion) VALUES (1, 'Ciudad Univercitaria', 'CU', '1965-06-30', 11);


/*

CREATE TABLE ProyectoSistemaMatricula.unah.TipoPeriodo(
														 idTipoPeriodo INT PRIMARY KEY,
														 descripcion VARCHAR(15)
														 );
*/

INSERT INTO ProyectoSistemaMatricula.unah.TipoPeriodo (idTipoPeriodo,descripcion) VALUES (001,'TRIMESTRAL');
INSERT INTO ProyectoSistemaMatricula.unah.TipoPeriodo (idTipoPeriodo,descripcion) VALUES (002,'SEMESTRAL');

SELECT * FROM ProyectoSistemaMatricula.unah.TipoPeriodo
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
											('MM411 ','ECUACIONES DIFERENCIALES',3,1,0,1);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('MM401','	ESTADISTICA I',3,1,0,1);

INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('EN011','Enf. Pres. y Futuro I',3,1,1,2);
INSERT INTO ProyectoSistemaMatricula.unah.Asignatura(idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo) VALUES
											('BI043','	Ecología y Salud I',4,0,0,2);

SELECT * FROM ProyectoSistemaMatricula.unah.Asignatura

/*
CREATE TABLE ProyectoSistemaMatricula.unah.Edificio(
													  idCodigoEdificio VARCHAR(25) PRIMARY KEY,
													  edificio VARCHAR(45),
													  fechaFundacion DATE,
													  observacion VARCHAR(300),
													  idCentroUniversitario INT,
													  FOREIGN KEY(idCentroUniversitario) REFERENCES ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro)
													  );
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


SELECT * FROM ProyectoSistemaMatricula.unah.Edificio

/*
CREATE TABLE ProyectoSistemaMatricula.unah.Aula(
												  idCodigoAula VARCHAR(25),
												  idCodigoEdificio VARCHAR(25),
												  cantidadMaximaDeEstudiante INT,
												  observacion VARCHAR(300),
												  PRIMARY KEY(idCodigoAula,idCodigoEdificio),												  
												  FOREIGN KEY(idCodigoEdificio) REFERENCES ProyectoSistemaMatricula.unah.Edificio(idCodigoEdificio)
												  );
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
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad,  idEdificio, idCentroUniversitario) VALUES (2, 'Facultad De Sociologia',  'D1', 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad,  idEdificio, idCentroUniversitario) VALUES (3, 'Facultad De Biologia', 'H1', 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad,  idEdificio, idCentroUniversitario) VALUES (4, 'Facultad De Matematicas',  'F1', 1);					  


insert into ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) values (1, 'Mestizo');
insert into ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) values (2, 'Mestizo');
insert into ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) values (3, 'Tolupan');
insert into ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) values (4, 'Tolupan');
insert into ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) values (5, 'Misquito');
insert into ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) values (6, 'Misquito');
insert into ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) values (7, 'Tolupan');
insert into ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) values (8, 'Mestizo');
insert into ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) values (9, 'Mestizo');
insert into ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) values (10, 'Mestizo');


insert into ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) values (1, NULL);
insert into ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) values (2, NULL);
insert into ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) values (3, NULL);
insert into ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) values (4, NULL);
insert into ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) values (5, NULL);
insert into ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) values (6, NULL);
insert into ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) values (7, NULL);
insert into ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) values (8, NULL);
insert into ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) values (9, NULL);
insert into ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) values (10, NULL);

insert into  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) values (1, 'Hondureño');
insert into  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) values (2, 'Hondureño');
insert into  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) values (3, 'Mexicanos');
insert into  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) values (4, 'Hondureños');
insert into  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) values (5, 'Hondureños');
insert into  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) values (6, 'Hondureño');
insert into  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) values (7, 'Hondureño');
insert into  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) values (8, 'Español');
insert into  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) values (9, 'Japones');
insert into  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) values (10, 'Japones');

insert into ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) values (1, 'Casado');
insert into ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) values (2, 'Casado');
insert into ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) values (3, 'Soltero');
insert into ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) values (4, 'Casado');
insert into ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) values (5, 'Soltero');
insert into ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) values (6, 'Casado');
insert into ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) values (7, 'Soltero');
insert into ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) values (8, 'Casado');
insert into ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) values (9, 'Casado');
insert into ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) values (10, 'Casado');


insert into ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) values (1, 'Femenino');
insert into ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) values (2, 'Masculino');
insert into ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) values (3, 'Masculino');
insert into ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) values (4, 'Masculino');
insert into ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) values (5, 'Masculino');
insert into ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) values (6, 'Femenino');
insert into ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) values (7, 'Masculino');
insert into ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) values (8, 'Masculino');
insert into ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) values (9, 'Masculino');
insert into ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) values (10, 'Masculino');

insert into ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) values (1, 'Mama');
insert into ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) values (2, 'Mama');
insert into ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) values (3, 'Mama');
insert into ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) values (4, 'Papa');
insert into ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) values (5, 'Papa');
insert into ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) values (6, 'Mama');
insert into ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) values (7, 'Papa');
insert into ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) values (8, 'Mama');
insert into ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) values (9, 'Papa');
insert into ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) values (10, 'Papa');


insert into  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) values (1, 'Saw Saddler', '99876543', 1);
insert into  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) values (2, 'Caitlin Bosence', '77896543', 2);
insert into  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) values (3, 'Sergent Byram', '94010099', 3);
insert into  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) values (4, 'Valli Overton', '52249909', 4);
insert into  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) values (5, 'Cherish Gateland', '22345678', 5);
insert into  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) values (6, 'Mellicent Haysman', '9874950', 6);
insert into  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) values (7, 'Anselma Gillbe', '80586677', 7);
insert into  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) values (8, 'Arline Danigel', '99674833', 8);
insert into  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) values (9, 'Camel Bricklebank', '9966542', 9);
insert into  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) values (10, 'Suzie Ivkovic', '996606747', 10);

insert into ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) values (1, 'mbollini0@wikimedia.org', 'ldelhanty0@unesco.org');
insert into ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) values (2, 'rcleatherow1@gmpg.org', 'calkins1@tumblr.com');
insert into ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) values (3, 'cobern2@tinyurl.com', 'kaylwin2@friendfeed.com');
insert into ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) values (4, 'hbarca3@patch.com', 'cjaeggi3@tripod.com');
insert into ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) values (5, 'ttolomio4@t-online.de', 'sdarwin4@zimbio.com');
insert into ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) values (6, 'bfoulds5@webmd.com', 'rdowbiggin5@oaic.gov.au');
insert into ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) values (7, 'bmaggillandreis6@dagondesign.com', 'kfairbeard6@eventbrite.com');
insert into ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) values (8, 'dspinnace7@ifeng.com', 'chastewell7@wix.com');
insert into ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) values (9, 'dleclaire8@arizona.edu', 'sburroughes8@theglobeandmail.com');
insert into ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) values (10, 'hedmondson9@vistaprint.com', 'atunnow9@digg.com');



insert into ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) values (1, 'Callida', 'Clea', 'Barny', 'Rolland', 1, 1, 1, '2012-12-06', 1, 1, 1, 1, 1);
insert into ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) values (2, 'Elfrida', 'Loralie', 'Grove', 'Noah', 2, 2, 2, '1999-10-11', 2, 2, 2, 2, 2);
insert into ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) values (3, 'Katherine', 'Brittany', 'Denney', 'Blaine', 3, 3, 3, '2009-07-22', 3, 3, 3, 3, 3);
insert into ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) values (4, 'Ruperta', 'Sunshine', 'Hurleigh', 'Haven', 4, 4, 4, '1996-02-19', 4, 4, 4, 4, 4);
insert into ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) values (5, 'De', 'Michaela', 'Mendy', 'Cobby', 5, 5, 5, '1982-06-22', 5, 5, 5, 5, 5);
insert into ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) values (6, 'Bibi', 'Pansie', 'Meredeth', 'Marv', 6, 6, 6, '1994-10-31', 6, 6, 6, 6, 6);
insert into ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) values (7, 'Trenna', 'Desiri', 'Bondie', 'Currie', 7, 7, 7, '1984-08-16', 7, 7, 7, 7, 7);
insert into ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) values (8, 'Timmy', 'Esther', 'Shannon', 'Douglass', 8, 8, 8, '1983-08-13', 8, 8, 8, 8, 8);
insert into ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) values (9, 'Evaleen', 'Joete', 'Jacob', 'Kristofor', 9, 9, 9, '1990-03-18', 9, 9, 9, 9, 9);
insert into ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) values (10, 'Marnia', 'Wilow', 'Dudley', 'Shayne', 10, 10, 10, '1995-02-20', 10, 10, 10, 10, 10);

SELECT *
FROM ProyectoSistemaMatricula.unah.Persona

insert into ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) values (1, '8761668', 1);
insert into ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) values (2, '88345662', 2);
insert into ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) values (3, '562374', 3);
insert into ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) values (4, '8825064', 4);
insert into ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) values (5, '8877525', 5);
insert into ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) values (6, '88452327', 6);
insert into ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) values (7, '8842932', 7);
insert into ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) values (8, '98654257', 8);
insert into ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) values (9, '99432988', 9);
insert into ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) values (10, '99432161', 10);
---------------------------------------------------------------------------------------------------------------------------------------
insert into ProyectoSistemaMatricula.unah.TipoEmpleado (idTipoEmpleado, descripcion) values (1, 'Administrativo');
insert into ProyectoSistemaMatricula.unah.TipoEmpleado (idTipoEmpleado, descripcion) values (2, 'Docensia');

--------------------------------------------------------------------------------------------------------------------------------------------
insert into ProyectoSistemaMatricula.unah.Cargo (idCargo, tipoCargo) values (1, 'Docente');
insert into ProyectoSistemaMatricula.unah.Cargo (idCargo, tipoCargo) values (2, 'Coordinador Clase');
insert into ProyectoSistemaMatricula.unah.Cargo (idCargo, tipoCargo) values (3, 'Jefe Departamento');


-----------------------------------------------------------------------------------------------------------------------

insert into ProyectoSistemaMatricula.unah.Contrato (idContrato, descripcion) values (1, 'Por hora');
insert into ProyectoSistemaMatricula.unah.Contrato (idContrato, descripcion) values (2, 'Permanente');

-----------------------------------------------------------------------------------------------------------------------------------------
insert into ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision) values (1, 'Ingenieria en sistemas', '5 años', 225, '2005-07-03');
insert into ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision) values (2, 'Licenciatura en Matecaticas', '4 años', 250, '2018-03-10');
insert into ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision) values (3, 'Licenciatura en Biologia', '6 años', 180, '2004-03-02');
insert into ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision) values (4, 'Ingenieria Quimica', '5 años', 300, '2001-06-16');
insert into ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision) values (5, 'Ingenieria Electrica', '6 años', 210, '2015-12-17');
insert into ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision) values (6, 'Licenciatura en sociologia', '5 años', 212, '2007-02-23');
insert into ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision) values (7, 'Licenciatura en Informatica Administrativa', '4 años', 253, '2008-03-09');
insert into ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision) values (8, 'Ingenieria Industrial', '5 años', 354, '2006-09-27');
insert into ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision) values (9, 'Medicina', '10 años', 160, '2001-08-19');
insert into ProyectoSistemaMatricula.unah.PlanEstudio (idPlanEstudio, nombre, duracionCarrera, totalUV, fechaRevision) values (10, 'Licenciatura en pedagogia', '4 años', 165, '2006-08-18');


SELECT *
FROM ProyectoSistemaMatricula.unah.PlanEstudio
-----------------------------------------------------------------------------------------------------------

Insert into ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) values (1, 'sistemas', '1', '1999-12-19', 1, 1);
insert into ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) values (2, 'matematicas', '1', '1992-05-04', 2, 2);
insert into ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) values (3, 'Biologia', '1', '1992-09-18', 3, 3);
insert into ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) values (4, 'Quimica', '1', '1990-06-21', 4, 4);
insert into ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) values (5, 'Electrica', '1', '1992-01-09', 4, 5);
insert into ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) values (6, 'Sociologia', '1', '2000-01-10', 1, 6);
insert into ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) values (7, 'Informatica', '1', '1993-01-21', 2, 7);
insert into ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) values (8, 'Industrial', '1', '1996-05-16', 3, 8);
insert into ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) values (9, 'medicina', '1', '1995-02-10', 2, 9);
insert into ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) values (10, 'Pdagogia', '1', '1997-03-01', 1, 10);
---------------------------------------------------------------------------------------------------------------------------------------------------------

insert into ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) values (1, '2018-07-02', NULL, 1, 1, 1, 2, 2);
insert into ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) values (2, '2017-07-02', NULL, 2, 2, 2, 3, 2);
insert into ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) values (3, '2016-07-02', NULL, 3, 1, 3, 3, 2);
insert into ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) values (4, '2017-07-27','2020-05-02', 4, 2, 4, 1, 1);
insert into ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) values (6, '2019-07-02', NULL, 6, 2, 6, 1, 2);
insert into ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) values (7, '2018-07-02', NULL, 7, 1, 7, 1, 2);
insert into ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) values (8, '2015-07-02', '2018-07-02', 8, 1, 8, 1, 1);
insert into ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) values (9, '2017-07-02', NULL, 9, 1, 9, 1, 2);
insert into ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) values (10, '2017-07-02', '2020-07-02', 10, 2, 10, 1, 1);

insert into ProyectoSistemaMatricula.unah.Docente(idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) values (1, '2019-01-01', NULL, NULL, NULL, NULL, 1);
insert into ProyectoSistemaMatricula.unah.Docente(idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) values (2, '2017-01-01', NULL, NULL, NULL, NULL, 2);
insert into ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) values (3, '2018-01-01', NULL, NULL, NULL, NULL, 3);
insert into ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) values (4, '2019-01-01', NULL, NULL, NULL, NULL, 4);
insert into ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) values (5, '2018-09-01', NULL, NULL, NULL, NULL, 1);
insert into ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) values (6, '2016-01-01', NULL, NULL, NULL, NULL, 6);
insert into ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) values (7, '2014-01-01', NULL, NULL, NULL, NULL, 7);
insert into ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) values (8, '2013-01-01', NULL, NULL, NULL, NULL, 8);
insert into ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) values (9, '2015-01-01', NULL, NULL, NULL, NULL, 9);
insert into ProyectoSistemaMatricula.unah.Docente (idDocente, fechaInicioCargo, fechaInicioEmpleado, fechaFinCargo, horaInicio, horaFin, idCarrera) values (10, '2017-01-01', NULL, NULL, NULL, NULL, 10);



SELECT * FROM ProyectoSistemaMatricula.unah.Aula

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

*/

SELECT * FROM ProyectoSistemaMatricula.unah.TipoPeriodo

INSERT INTO ProyectoSistemaMatricula.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('I','2020-01-01',001,'2020-04-30',2020);

INSERT INTO ProyectoSistemaMatricula.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('I','2020-01-01',002,'2020-06-30',2020);

INSERT INTO ProyectoSistemaMatricula.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('II','2020-05-01',001,'2020-09-30',2020);

INSERT INTO ProyectoSistemaMatricula.unah.Periodo(idPeriodo ,fechaInicio ,idTipoPeriodo ,fechaFinalizacion ,anio) VALUES
										('II','2020-07-01',002,'2020-12-22',2020);

SELECT * FROM ProyectoSistemaMatricula.unah.Periodo

/*	
CREATE TABLE ProyectoSistemaMatricula.unah.TipoSeccion (
														idTipoSeccion INT PRIMARY KEY,
														tipo VARCHAR (25)
												);
*/

INSERT INTO  ProyectoSistemaMatricula.unah.TipoSeccion (idTipoSeccion ,tipo) VALUES 	(001,'PRESENCIAL');
INSERT INTO  ProyectoSistemaMatricula.unah.TipoSeccion (idTipoSeccion ,tipo) VALUES 	(002,'VIRTUAL');
INSERT INTO  ProyectoSistemaMatricula.unah.TipoSeccion (idTipoSeccion ,tipo) VALUES 	(003,'LABORATORIO');	
			
SELECT * from  ProyectoSistemaMatricula.unah.TipoSeccion

/*
CREATE TABLE ProyectoSistemaMatricula.unah.ObservacionNotaFinal(
																   idObservacionNotaFinal VARCHAR(3) PRIMARY KEY NOT NULL,
																   descripcion VARCHAR(25)
																   );
*/

INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('APR','APROBADO');
INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('RPB','REPROBADO');
INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('ABN','ABANDONO');
INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal( idObservacionNotaFinal , descripcion) VALUES ('NPS','NO SE PRESENTO');


SELECT * FROM ProyectoSistemaMatricula.unah.ObservacionNotaFinal;

/*
CREATE TABLE ProyectoSistemaMatricula.unah.Dias (
													idDias INT PRIMARY KEY ,
													descripcionDias VARCHAR(25)
													);
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

SELECT * FROM ProyectoSistemaMatricula.unah.Dias

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


SELECT * FROM ProyectoSistemaMatricula.unah.Asignatura
SELECT * FROM ProyectoSistemaMatricula.unah.Dias
SELECT * FROM ProyectoSistemaMatricula.unah.TipoPeriodo
SELECT * FROM ProyectoSistemaMatricula.unah.TipoSeccion
SELECT * FROM ProyectoSistemaMatricula.unah.Docente

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

select * from  ProyectoSistemaMatricula.unah.Seccion

insert into ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) values (1, '690', '76823', '8');
insert into ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) values (2, '843', '6', '00');
insert into ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) values (3, '509', '07908', '975');
insert into ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) values (4, '1219', '61', '551');
insert into ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) values (5, '1099', '71', '2944');
insert into ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) values (6, '675', '0', '6');
insert into ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) values (7, '634', '50', '573');
insert into ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) values (8, '278', '07', '3385');
insert into ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) values (9, '607', '3245', '1');
insert into ProyectoSistemaMatricula.unah.NotaExamenAptitud (idNotaAptitud, notaPaa, notaPam, notaPccns) values (10, '694', '63506', '65025');




insert into ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera) values ('705864082', 1, '25', 'PH', 1, '1', 1, 1, 1);
insert into ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera) values ('881059432', 1, '27', 'PH', 2, '2', 0, 0, 2);
insert into ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera) values ('741646051', 0, '20', 'CN', 3, '3', 0, 0, 3);
insert into ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera) values ('279306733', 0, '10', 'CY', 4, '4', 1, 1, 4);
insert into ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera) values ('556095073', 1, '15', 'NA', 5, '5', 1, 0, 1);
insert into ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera) values ('667121034', 1, '18', 'CN', 6, '6', 0, 1, 6);
insert into ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera) values ('874907147', 1, '17', 'CN', 7, '7', 0, 1, 7);
insert into ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera) values ('160981426', 0, '14', 'PH', 8, '8', 1, 0, 8);
insert into ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera) values ('468438718', 0, '12', 'PH', 9, '9', 1, 0, 9);
insert into ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera) values ('304499755', 0, '45', 1, 10, '10', 0, 1, 10);

SELECT *
FROM ProyectoSistemaMatricula.unah.Estudiante

/*

insert into ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) values (1, '87', '19', '705864082');
insert into ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) values (2, '65', '70', '881059432');
insert into ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) values (3, '42', '84', '741646051');
insert into ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) values (4, '78', '42', '279306733');
insert into ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) values (5, '80', '53', '556095073');
insert into ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) values (6, '67', '100', '667121034');
insert into ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) values (7, '45', '29', '874907147');
insert into ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) values (8, '94', '90', '160981426');
insert into ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) values (9, '65', '70', '468438718');
insert into ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) values (10, '82', '63','304499755');

SELECT *
FROM ProyectoSistemaMatricula.unah.HistorialAcademico
-------------------------------------------------------------------------------------------------------------------------------------------------------------
insert into ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) values (1, 1, '2020-06-09', '2020-01-29', 1, '2020-04-07', 2, '705864082', 1);--
insert into ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) values (2, 0, '2020-07-14', '2020-04-10', 2, '2019-04-01', 2, '705864082', 1);
insert into ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) values (3, 1, '2020-07-09', '2019-09-05', 3, '2018-03-17', 2, '705864082', 1);--
insert into ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) values (4, 1, '2020-06-05', '2020-03-03', 4, '2017-05-19', 1, '705864082', 1);---
insert into ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) values (5, 1, '2020-05-19', '2020-02-24', 5, '2017-05-18',1 ,'705864082' , 1);
insert into ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) values (6, 0, '2020-08-12', '2020-01-25', 6, '2015-04-23', 1, '705864082', 1);
insert into ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) values (7, 0, '2020-07-28', '2019-11-28', 7, '2014-03-27', 1, '881059432', 2);
insert into ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) values (8, 0, '2020-06-01', '2019-11-11', 8, '2013-04-16', 2, '741646051', 3);
insert into ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) values (9, 1, '2020-06-17', '2019-12-15', 9, '2012-02-29', 1,'279306733' , 4);--
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

*/