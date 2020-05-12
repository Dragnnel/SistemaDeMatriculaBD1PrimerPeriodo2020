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


/*SELECT *
FROM ProyectoSistemaMatricula.unah.Pais


CREATE TABLE ProyectoSistemaMatricula.unah.Pais (
												  codigoPais VARCHAR(6)  PRIMARY KEY,
												  pais VARCHAR(45),
												  idContinente INT,
												  FOREIGN KEY(idContinente) REFERENCES ProyectoSistemaMatricula.unah.Continente(idContinente)
												  );

SELECT * FROM ProyectoSistemaMatricula.unah.Pais
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


SELECT * FROM ProyectoSistemaMatricula.unah.Departamento


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
SELECT *
FROM ProyectoSistemaMatricula.unah.Departamento





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



INSERT INTO ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro, centroUniversitario, sigla, fechaFundacion, idDireccion) VALUES (1, 'Ciudad Univercitaria', 'CU', '1965-06-30', 11);


/*

CREATE TABLE ProyectoSistemaMatricula.unah.TipoPeriodo(
														 idTipoPeriodo INT PRIMARY KEY,
														 descripcion VARCHAR(15)
														 );
*/

INSERT INTO ProyectoSistemaMatricula.unah.TipoPeriodo (idTipoPeriodo,descripcion) VALUES (001,'TRIMESTRAL');
INSERT INTO ProyectoSistemaMatricula.unah.TipoPeriodo (idTipoPeriodo,descripcion) VALUES (002,'SEMESTRAL');


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
											('BI043','	Ecolog�a y Salud I',4,0,0,2);


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


INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (1, 'Mestizo');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (2, 'Mestizo');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (3, 'Tolupan');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (4, 'Tolupan');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (5, 'Misquito');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (6, 'Misquito');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (7, 'Tolupan');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (8, 'Mestizo');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (9, 'Mestizo');
INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico (idGrupoEtnico, descripcion) VALUES (10, 'Mestizo');


INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (1, NULL);
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (2, NULL);
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (3, NULL);
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (4, NULL);
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (5, NULL);
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (6, NULL);
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (7, NULL);
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (8, NULL);
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (9, NULL);
INSERT INTO ProyectoSistemaMatricula.unah.TipoDiscapacidad (idDiscapacidad, descripcion) VALUES (10, NULL);

INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (1, 'Hondure�o');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (2, 'Hondure�o');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (3, 'Mexicanos');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (4, 'Hondure�os');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (5, 'Hondure�os');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (6, 'Hondure�o');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (7, 'Hondure�o');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (8, 'Espa�ol');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (9, 'Japones');
INSERT INTO  ProyectoSistemaMatricula.unah.Nacionalidad (idNacionalidad, descripcion) VALUES (10, 'Japones');

INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (1, 'Casado');
INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (2, 'Casado');
INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (3, 'Soltero');
INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (4, 'Casado');
INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (5, 'Soltero');
INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (6, 'Casado');
INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (7, 'Soltero');
INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (8, 'Casado');
INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (9, 'Casado');
INSERT INTO ProyectoSistemaMatricula.unah.EstadoCivil (idEstado, descripcion) VALUES (10, 'Casado');


INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (1, 'Femenino');
INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (2, 'Masculino');
INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (3, 'Masculino');
INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (4, 'Masculino');
INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (5, 'Masculino');
INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (6, 'Femenino');
INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (7, 'Masculino');
INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (8, 'Masculino');
INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (9, 'Masculino');
INSERT INTO ProyectoSistemaMatricula.unah.Sexo (idSexo, descripcion) VALUES (10, 'Masculino');

INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (1, 'Mama');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (2, 'Mama');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (3, 'Mama');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (4, 'Papa');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (5, 'Papa');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (6, 'Mama');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (7, 'Papa');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (8, 'Mama');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (9, 'Papa');
INSERT INTO ProyectoSistemaMatricula.unah.Parentesco (idParentesco, descripcion) VALUES (10, 'Papa');


INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (1, 'Saw Saddler', '99876543', 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (2, 'Caitlin Bosence', '77896543', 2);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (3, 'Sergent Byram', '94010099', 3);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (4, 'Valli Overton', '52249909', 4);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (5, 'Cherish Gateland', '22345678', 5);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (6, 'Mellicent Haysman', '9874950', 6);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (7, 'Anselma Gillbe', '80586677', 7);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (8, 'Arline Danigel', '99674833', 8);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (9, 'Camel Bricklebank', '9966542', 9);
INSERT INTO  ProyectoSistemaMatricula.unah.Referencia (idReferencia, nombreCompleto, numeroTelefono, idParentesco) VALUES (10, 'Suzie Ivkovic', '996606747', 10);

INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (1, 'mbollini0@wikimedia.org', 'ldelhanty0@unesco.org');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (2, 'rcleatherow1@gmpg.org', 'calkins1@tumblr.com');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (3, 'cobern2@tinyurl.com', 'kaylwin2@friendfeed.com');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (4, 'hbarca3@patch.com', 'cjaeggi3@tripod.com');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (5, 'ttolomio4@t-online.de', 'sdarwin4@zimbio.com');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (6, 'bfoulds5@webmd.com', 'rdowbiggin5@oaic.gov.au');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (7, 'bmaggillandreis6@dagondesign.com', 'kfairbeard6@eventbrite.com');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (8, 'dspinnace7@ifeng.com', 'chastewell7@wix.com');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (9, 'dleclaire8@arizona.edu', 'sburroughes8@theglobeandmail.com');
INSERT INTO ProyectoSistemaMatricula.unah.Correo (idCorreo, CorreoPersonal, correoInstitucional) VALUES (10, 'hedmondson9@vistaprint.com', 'atunnow9@digg.com');



INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (1, 'Callida', 'Clea', 'Barny', 'Rolland', 1, 1, 1, '2012-12-06', 1, 1, 1, 1, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (2, 'Elfrida', 'Loralie', 'Grove', 'Noah', 2, 2, 2, '1999-10-11', 2, 2, 2, 2, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (3, 'Katherine', 'Brittany', 'Denney', 'Blaine', 3, 3, 3, '2009-07-22', 3, 3, 3, 3, 3);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (4, 'Ruperta', 'Sunshine', 'Hurleigh', 'Haven', 4, 4, 4, '1996-02-19', 4, 4, 4, 4, 4);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (5, 'De', 'Michaela', 'Mendy', 'Cobby', 5, 5, 5, '1982-06-22', 5, 5, 5, 5, 5);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (6, 'Bibi', 'Pansie', 'Meredeth', 'Marv', 6, 6, 6, '1994-10-31', 6, 6, 6, 6, 6);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (7, 'Trenna', 'Desiri', 'Bondie', 'Currie', 7, 7, 7, '1984-08-16', 7, 7, 7, 7, 7);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (8, 'Timmy', 'Esther', 'Shannon', 'Douglass', 8, 8, 8, '1983-08-13', 8, 8, 8, 8, 8);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (9, 'Evaleen', 'Joete', 'Jacob', 'Kristofor', 9, 9, 9, '1990-03-18', 9, 9, 9, 9, 9);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (10, 'Marnia', 'Wilow', 'Dudley', 'Shayne', 10, 10, 10, '1995-02-20', 10, 10, 10, 10, 10);
INSERT INTO ProyectoSistemaMatricula.unah.Persona (idPersona, primerNombre, SegundoNombre, primerApellido, SegundoApellido, idNacionalidad, idSexo, idestadoCivil, fechaNacimiento, idGrupoEtnico, idDiscapacidad, idDireccion, idCorreo, idReferencia) VALUES (11, 'ANa', 'Fabiola', 'Dudley', 'Shayne', 10, 10, 10, '1995-02-20', 10, 10, 10, 10, 10);

SELECT *
FROM ProyectoSistemaMatricula.unah.Persona

INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (1, '8761668', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (2, '88345662', 2);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (3, '562374', 3);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (4, '8825064', 4);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (5, '8877525', 5);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (6, '88452327', 6);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (7, '8842932', 7);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (8, '98654257', 8);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (9, '99432988', 9);
INSERT INTO ProyectoSistemaMatricula.unah.Telefono (idTelefono, telefono, idPersona) VALUES (10, '99432161', 10);
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


SELECT *
FROM ProyectoSistemaMatricula.unah.PlanEstudio
-----------------------------------------------------------------------------------------------------------

INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (1, 'sistemas', '1', '1999-12-19', 1, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (2, 'matematicas', '1', '1992-05-04', 2, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (3, 'Biologia', '1', '1992-09-18', 3, 3);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (4, 'Quimica', '1', '1990-06-21', 4, 4);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (5, 'Electrica', '1', '1992-01-09', 4, 5);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (6, 'Sociologia', '1', '2000-01-10', 1, 6);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (7, 'Informatica', '1', '1993-01-21', 2, 7);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (8, 'Industrial', '1', '1996-05-16', 3, 8);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (9, 'medicina', '1', '1995-02-10', 2, 9);
INSERT INTO ProyectoSistemaMatricula.unah.Carrera (idCarrera, nombreCarrera, requisitoIngreso, fechaCreacion, idFacultad, idPlanEstudio) VALUES (10, 'Pdagogia', '1', '1997-03-01', 1, 10);
---------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (1, '2018-07-02', NULL, 1, 1, 1, 2, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (2, '2017-07-02', NULL, 2, 2, 2, 3, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (3, '2016-07-02', NULL, 3, 1, 3, 3, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (4, '2017-07-27','2020-05-02', 4, 2, 4, 1, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (6, '2019-07-02', NULL, 6, 2, 6, 1, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (7, '2018-07-02', NULL, 7, 1, 7, 1, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (8, '2015-07-02', '2018-07-02', 8, 1, 8, 1, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (9, '2017-07-02', NULL, 9, 1, 9, 1, 2);
INSERT INTO ProyectoSistemaMatricula.unah.Empleado (idEmpleado, fechaInicioEmpleado, fechaFinEmpleado, idPersona, idtipoEmpleado, idCarrera, idcargo, idContrato) VALUES (10, '2017-07-02', '2020-07-02', 10, 2, 10, 1, 1);

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




INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('705864082', 1, '25', 'PH', 1, '1', 1, 1, 1, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('881059432', 1, '27', 'PH', 2, '2', 0, 0, 2, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('741646051', 0, '20', 'CN', 3, '3', 0, 0, 3, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('279306733', 0, '10', 'CY', 4, '4', 1, 1, 4, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('556095073', 1, '15', 'NA', 5, '5', 1, 0, 1, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('667121034', 1, '18', 'CN', 6, '6', 0, 1, 6, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('874907147', 1, '17', 'CN', 7, '7', 0, 1, 7, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('160981426', 0, '14', 'PH', 8, '8', 1, 0, 8, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('468438718', 0, '12', 'PH', 9, '9', 1, 0, 9, 0);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('304499755', 0, '45', 1, 10, '10', 0, 1, 10, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante (idEstudiante, esRepresentanteArteoDeporte, uvDisponibles, contrasenia, idNotaAptitud, idPersona, cursoCursoModalidaDeClasesVirtuales, cursoCursoIntroduccionVidaUniversitaria, idCarrera, poseeCarreraSimultanea) VALUES ('2020499755', 0, '45', 'ss', 11, '11', 0, 1, 10, 0);

SELECT *
FROM ProyectoSistemaMatricula.unah.Estudiante



INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES (1, '87', '19', '705864082');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES (2, '65', '70', '881059432');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES (3, '42', '84', '741646051');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES (4, '78', '42', '279306733');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES (5, '80', '53', '556095073');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES (6, '67', '100', '667121034');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES (7, '45', '29', '874907147');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES (8, '94', '90', '160981426');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES (9, '65', '70', '468438718');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES (10, '82', '63','304499755');
INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico (idHistorial, indicePeriodo, indiceGlobal, idEstudiante) VALUES (11, NULL, NULL,'2020499755');


SELECT *
FROM ProyectoSistemaMatricula.unah.HistorialAcademico
-------------------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (1, 1, '2020-01-01', '2020-01-29', 'I','2020-01-01', 2, '705864082', 1);--
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (2, 0, '2020-07-14', '2020-04-10','I','2020-01-01', 2, '705864082', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (3, 1, '2020-07-09', '2019-09-05', 'I', '2020-01-01', 2, '705864082', 1);-------
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (4, 1, '2020-06-05', '2020-03-03','II', '2020-05-01', 1, '705864082', 1);---
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (5, 1, '2020-05-19', '2020-02-24','I','2020-01-01',1 ,'705864082' , 1);
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (6, 0, '2020-08-12', '2020-01-25','II', '2020-05-01', 1, '705864082', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (7, 0, '2020-07-28', '2019-11-28', 'II', '2020-05-01', 1, '881059432', 2);
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (8, 0, '2020-06-01', '2019-11-11','I','2020-01-01', 2, '741646051', 3);
INSERT INTO ProyectoSistemaMatricula.unah.Matricula (idMatricula, confirmacionPago, fechaInicio, fechaFin, idPeriodo,  fechaInicioPeriodo, idTipoPeriodo, idEstudiante, idHistorial) VALUES (9, 1, '2020-06-17', '2019-12-15','II', '2020-05-01', 1,'279306733' , 4);--
-------------------------------------------------------------------------------------------------------------------------------------------------------------------