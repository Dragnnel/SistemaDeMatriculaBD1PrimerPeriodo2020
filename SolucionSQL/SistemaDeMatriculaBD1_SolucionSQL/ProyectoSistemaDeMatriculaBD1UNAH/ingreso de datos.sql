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

INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (11, 1, 1, 'Avenida Benito');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (2, 2, 1, 'Calle 9');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (3, 20, 16, 'Avenida 2 ');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (4, 19, 16, 'Avenida Concepcion');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (5, 15, 4, 'Avenida 6');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (6, 13, 4, 'Avenida 11');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (7, 11, 4, 'Avenida 8');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (8, 7, 2, 'Calle Comecio');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (9, 8, 2, 'Calle los Profesores');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (10, 9, 2, 'Avenida 12');
INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (1, 4, 1, 'Boulevar Suyapa');






SELECT *
FROM ProyectoSistemaMatricula.unah.CentroUniversitario


INSERT INTO ProyectoSistemaMatricula.unah.CentroUniversitario(idCentro, centroUniversitario, sigla, fechaFundacion, idDireccion) VALUES (1, 'Ciudad Univercitaria', 'CU', '1965-06-30', 11);


INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio, codigoEdificio, fechaFundacion, observacion, idCentroUniversitario) VALUES (1, 'A1', '1978-08-09', NULL, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio, codigoEdificio, fechaFundacion, observacion, idCentroUniversitario) VALUES (2, 'A2', '1978-08-09', NULL, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio, codigoEdificio, fechaFundacion, observacion, idCentroUniversitario) VALUES (3, 'B1', '1978-08-09', NULL, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio, codigoEdificio, fechaFundacion, observacion, idCentroUniversitario) VALUES (4, 'B2', '1978-08-09', NULL, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio, codigoEdificio, fechaFundacion, observacion, idCentroUniversitario) VALUES (5, 'E1', '1978-08-09', NULL, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio, codigoEdificio, fechaFundacion, observacion, idCentroUniversitario) VALUES (6, 'J1', '1978-08-09', NULL, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio, codigoEdificio, fechaFundacion, observacion, idCentroUniversitario) VALUES (7, 'F', '1978-08-09', NULL, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio, codigoEdificio, fechaFundacion, observacion, idCentroUniversitario) VALUES (8, 'D', '1978-08-09', NULL, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio, codigoEdificio, fechaFundacion, observacion, idCentroUniversitario) VALUES (9, 'C1', '1978-08-09', NULL, 1);
INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio, codigoEdificio, fechaFundacion, observacion, idCentroUniversitario) VALUES (10, 'C2', '1978-08-09', NULL, 1);
				 						
										
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula, codigoAula, cantidadMaximaDeEstudiante, observacion, idEdificio) VALUES (1, '112', '60', NULL, 4);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula, codigoAula, cantidadMaximaDeEstudiante, observacion, idEdificio) VALUES (2, '402', '60', NULL, 4);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula, codigoAula, cantidadMaximaDeEstudiante, observacion, idEdificio) VALUES (3, '409', '60', NULL, 2);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula, codigoAula, cantidadMaximaDeEstudiante, observacion, idEdificio) VALUES (4, '410', '60', NULL, 2);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula, codigoAula, cantidadMaximaDeEstudiante, observacion, idEdificio) VALUES (5, '301', '60', NULL, 1);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula, codigoAula, cantidadMaximaDeEstudiante, observacion, idEdificio) VALUES (6, '306', '60', NULL, 1);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula, codigoAula, cantidadMaximaDeEstudiante, observacion, idEdificio) VALUES (7, '102', '35', 'Laboratorio', 4);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula, codigoAula, cantidadMaximaDeEstudiante, observacion, idEdificio) VALUES (8, '101', '45', 'Laboratorio', 4);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula, codigoAula, cantidadMaximaDeEstudiante, observacion, idEdificio) VALUES (9, '112', '60', NULL, 3);	 
INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula, codigoAula, cantidadMaximaDeEstudiante, observacion, idEdificio) VALUES (10, '111', '60', NULL, 3);	 


INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad, idEdificio, idCentroUniversitario) VALUES (1, 'Facultad De Ingenieria', 4, 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad, idEdificio, idCentroUniversitario) VALUES (2, 'Facultad De Sociologia', 1, 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad, idEdificio, idCentroUniversitario) VALUES (3, 'Facultad De Biologia', 6, 1);
INSERT INTO  ProyectoSistemaMatricula.unah.Facultad(idFacultad, facultad, idEdificio, idCentroUniversitario) VALUES (4, 'Facultad De Matematicas', 7, 1);					  

/*
	Llenado  de la tabla ObservacionNotaFinal
*/
INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal(idObservacionNotaFinal,descripcion) VALUES('APR', 'APROBADA')
INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal(idObservacionNotaFinal,descripcion) VALUES('RPR', 'REPROBADA')
INSERT INTO ProyectoSistemaMatricula.unah.ObservacionNotaFinal(idObservacionNotaFinal,descripcion) VALUES('NSP', 'NO SE PRESENTO')