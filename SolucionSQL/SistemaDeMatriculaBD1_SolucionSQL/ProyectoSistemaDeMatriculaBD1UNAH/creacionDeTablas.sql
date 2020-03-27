print 'Proyecto Sistema de matricula de la UNAH BD 1 '


CREATE DATABASE SistemaDeMatricula;


CREATE DATABASE ProyectoSistemaMatriculaUNAH

CREATE TABLE Continente (idContinente INT PRIMARY KEY,
						nombreContinente VARCHAR(25))
						
CREATE TABLE Pais (idPais INT PRIMARY KEY,
				  nombrePais VARCHAR(25),
				  idContinente INT
				  FOREIGN KEY(idContinente) REFERENCES Continente(idContinente)) 

CREATE TABLE Departamento (idDepartamento INT PRIMARY KEY,
						   NombreDepartamento VARCHAR(25),
						   idPais INT
						   FOREIGN KEY(idPais) REFERENCES Pais(idPais))

CREATE TABLE Municipio (idMunicipio INT PRIMARY KEY,
						nombreMunicipio VARCHAR(25),
						idDepartamento INT,
						descripcion VARCHAR (25),
						CalleAvenida VARCHAR (30),
						FOREIGN KEY(idDepartamento) REFERENCES Departamento(idDepartamento),
						FOREIGN KEY(idMunicipio) REFERENCES Municipio(idMunicipio))

CREATE TABLE Direccion (idDireccion INT PRIMARY KEY,
                        descripcion VARCHAR(30),
						calleAvenida VARCHAR(20),
						idMunicipio INT,
						idDepartamento INT,
						FOREIGN KEY (idMunicipio) REFERENCES Municipio(idMunicipio),
						FOREIGN KEY (idDepartamento) REFERENCES Departamento(idDepartamento))

CREATE TABLE CentroUniversitario (idCentrouniversitario INT PRIMARY KEY,
									nombreCompleto Varchar(45),
									sigla VARCHAR(5),
									idDireccion INT,
									FOREIGN KEY(idDireccion) REFERENCES Direccion(idDireccion))
									 
CREATE TABLE Edificio(idEdificio INT PRIMARY KEY,
					  codigoEdificio VARCHAR(10),
					  fechaFundacion DATE,
					  observacion VARCHAR(40),
					  idCentroUniversitario INT,
					  FOREIGN KEY(idCentroUniversitario) REFERENCES CentroUniversitario(idCentroUniversitario))

CREATE TABLE Facultad(idFacultad INT PRIMARY KEY,
					  nombreFacultad VARCHAR(45),
					  idDecano INT,
					  idEdificio INT,
					  FOREIGN KEY (idEdificio) REFERENCES Edificio(idEdificio)
					  FOREIGN KEY(idDeacano) REFERENCES Decano(idDecano))


