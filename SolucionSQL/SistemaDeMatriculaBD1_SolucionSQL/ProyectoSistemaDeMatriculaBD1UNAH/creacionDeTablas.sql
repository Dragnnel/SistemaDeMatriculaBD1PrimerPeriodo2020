print 'Proyecto Sistema de matricula de la UNAH BD 1 '


CREATE DATABASE SistemaDeMatricula;


CREATE DATABASE ProyectoSistemaMatriculaUNAH

CREATE TABLE Continente (idContinente INT PRIMARY KEY NOT NULL,
						nombreContinente VARCHAR(25))
						
CREATE TABLE Pais (idPais INT PRIMARY KEY NOT NULL,
				  nombrePais VARCHAR(25),
				  idContinente INT
				  FOREIGN KEY(idContinente) REFERENCES Continente(idContinente)) 

CREATE TABLE Departamento (idDepartamento INT PRIMARY KEY NOT NULL,
						   NombreDepartamento VARCHAR(25),
						   idPais INT
						   FOREIGN KEY(idPais) REFERENCES Pais(idPais))

CREATE TABLE Municipio (idMunicipio INT PRIMARY KEY NOT NULL,
						nombreMunicipio VARCHAR(25),
						idDepartamento INT,
						descripcion VARCHAR (45),
						CalleAvenida VARCHAR (30),
						FOREIGN KEY(idDepartamento) REFERENCES Departamento(idDepartamento),
						FOREIGN KEY(idMunicipio) REFERENCES Municipio(idMunicipio))

CREATE TABLE Direccion (idDireccion INT PRIMARY KEY NOT NULL,
                        descripcion VARCHAR(30),
						calleAvenida VARCHAR(20),
						idMunicipio INT,
						idDepartamento INT,
						FOREIGN KEY (idMunicipio) REFERENCES Municipio(idMunicipio),
						FOREIGN KEY (idDepartamento) REFERENCES Departamento(idDepartamento))

CREATE TABLE CentroUniversitario (idCentrouniversitario INT PRIMARY KEY NOT NULL,
									nombreCompleto Varchar(45),
									sigla VARCHAR(5),
									idDireccion INT,
									FOREIGN KEY(idDireccion) REFERENCES Direccion(idDireccion))
									 
CREATE TABLE Edificio(idEdificio INT PRIMARY KEY NOT NULL,
					  codigoEdificio VARCHAR(10),
					  fechaFundacion DATE,
					  observacion VARCHAR(45),
					  idCentroUniversitario INT,
					  FOREIGN KEY(idCentroUniversitario) REFERENCES CentroUniversitario(idCentroUniversitario))
CREATE TABLE Decano(idDecano INT NOT NULL,
					idEmpleado INT,
					fechaInicio DATE,
					fechaFin DATE

CREATE TABLE Facultad(idFacultad INT PRIMARY KEY NOT NULL,
					  nombreFacultad VARCHAR(45),
					  idDecano INT,
					  idEdificio INT,
					  FOREIGN KEY (idEdificio) REFERENCES Edificio(idEdificio)
					  FOREIGN KEY(idDecano) REFERENCES Decano(idDecano))

CREATE TABLE PemsunAcademico(idAsignatura INT PRIMARY KEY NOT NULL,
							idPlanestudio INT PRIMARY KEY NOT NULL)

CREATE TABLE TipoPeriodo(idTipoperiodo INT PRIMARY KEY NOT NULL,
						 descripcion VARCHAR(45) )

CREATE TABLE Instructor(idInstructor INT PRIMARY KEY NOT NULL,

CREATE TABLE NotaExamenAptitud (idNotaexamenaptitud INT PRIMARY KEY NOT NULL,
								notaPaa INT,
								notaPam INT,
								notaPccns INT)
CREATE TABLE Estudiante(idEstudiante INT PRIMARY KEY NOT NULL.
						perteneceAunequipo BIT(2),
						contrasenia VARCHAR(45),
						idCentrouniversitario INT,
						idNotaexamenaptitud INT,
						idMatricula INT,
						idDepartamentoCarrera INT,

						
CREATE TABLE Labotarorio (idLaboratorio INT PRIMARY KEY NOT NULL,
						  horaInicio INT,
						  horaFinal INT,
						  idInstructor INT,
						  idAsignatura INT,
						  FOREIGN KEY (idInstructor) REFERENCES Instructor(idInstructor)
						  FOREIGN KEY (idAsignatura) REFERENCES Asignatura(idAsinatura))


