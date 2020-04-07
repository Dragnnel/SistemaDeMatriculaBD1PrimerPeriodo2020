---Insertar Datos Demograficos
--------------------------------------------------------------------------

INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente) VALUES (1, 'America');
/*INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente) VALUES (2, 'Europa');
INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente)VALUES (3, 'Asia');
INSERT INTO ProyectoSistemaMatricula.unah.Continente (idContinente, continente)VALUES (4, 'Africa');
			*/
SELECT *
FROM  ProyectoSistemaMatricula.unah.Continente	


INSERT INTO ProyectoSistemaMatricula.unah.Pais (idPais, pais, idContinente)VALUES(1, 'Honduras', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (idPais, pais, idContinente)VALUES(2, 'España', 2);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (idPais, pais, idContinente)VALUES(3, 'Mexico', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (idPais, pais, idContinente)VALUES(4, 'Francia', 2);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (idPais, pais, idContinente)VALUES(5, 'Argentina', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Pais (idPais, pais, idContinente)VALUES(6, 'Japon', 3);
		

INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (1, 'Francisco Morazan', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (2, 'Gracias a Dios', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (3, 'Islas De La Bahia', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (4, 'Santa Barbara', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (5, 'Yoro', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (6, 'Copan', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (7, 'Choluteca', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (8, 'Comayagua', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (9, 'Cortes', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (10, 'El paraiso', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (11, 'Colon', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (12, 'La Paz', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (13, 'Ocotepeque', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (14, 'Lempira', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (15, 'Valle', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (16, 'Olancho', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (17, 'Intibuca', 1);
INSERT INTO ProyectoSistemaMatricula.unah.Departamento(idDepartamento,departamento, idPais) VALUES (18, 'Atlantidad', 1);


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


INSERT INTO ProyectoSistemaMatricula.unah.Direccion (idDireccion, idMucicipio, idDepartamento ,descripcion) VALUES (1, 1, 1, 'Avenida Benito');
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