/*
	Creacion de una mini base de datos para mostrar el funcionamiento (idea) del sistema de matricula
*/
CREATE DATABASE SistemaMatricula;

/*
	Creacion de las tablas
*/
CREATE TABLE Asignatura(idAsignatura INT PRIMARY KEY,
						nombreAsignatura VARCHAR(50),
						cantidadUV INT,
						observacion VARCHAR(100))

CREATE TABLE Estudiante(idEstudiante INT PRIMARY KEY, --Numero de cuenta
						nombre VARCHAR(50),
						UVDisponibles INT)

CREATE TABLE Matricula(idMatrucula INT PRIMARY KEY,
					   idEstudiante INT,
					   observacion VARCHAR(50),
					   FOREIGN KEY(idEstudiante) REFERENCES Estudiante(idEstudiante))

CREATE TABLE Seccion(idSeccion INT,
					 idAsignatura INT,
					 HI VARCHAR(5),
					 HF VARCHAR(5),
					 cuposdisponibles INT,
					 PRIMARY KEY(idSeccion, idAsignatura),
					 FOREIGN KEY(idAsignatura) REFERENCES Asignatura(idAsignatura))

CREATE TABLE SeccionMatricula(idMatrucula INT,
							  idSeccion INT,
							  idAsignatura INT,
							  observacion VARCHAR(50),
							  PRIMARY KEY(idMatrucula, idSeccion),
							  FOREIGN KEY(idMatrucula) REFERENCES Matricula(idMatrucula),
							  FOREIGN KEY(idSeccion, idAsignatura) REFERENCES Seccion(idSeccion, idAsignatura))

/*
	Llenado de algunos datos
		*Directamente sin usar los SP, ya que lo que quiero mostrar es el manejo de las matriculas
*/
INSERT INTO SistemaMatricula.dbo.Asignatura(idAsignatura,nombreAsignatura,cantidadUV,observacion) VALUES(100,'Español',4,'')
INSERT INTO SistemaMatricula.dbo.Asignatura(idAsignatura,nombreAsignatura,cantidadUV,observacion) VALUES(101,'Historia',4,'')
INSERT INTO SistemaMatricula.dbo.Asignatura(idAsignatura,nombreAsignatura,cantidadUV,observacion) VALUES(102,'Filosofia',4,'')
INSERT INTO SistemaMatricula.dbo.Asignatura(idAsignatura,nombreAsignatura,cantidadUV,observacion) VALUES(103,'Sociologia',4,'')
INSERT INTO SistemaMatricula.dbo.Asignatura(idAsignatura,nombreAsignatura,cantidadUV,observacion) VALUES(104,'Fisica I',5,'')
INSERT INTO SistemaMatricula.dbo.Asignatura(idAsignatura,nombreAsignatura,cantidadUV,observacion) VALUES(105,'Fisica II',5,'')
INSERT INTO SistemaMatricula.dbo.Asignatura(idAsignatura,nombreAsignatura,cantidadUV,observacion) VALUES(106,'Precalculo',5,'')
INSERT INTO SistemaMatricula.dbo.Asignatura(idAsignatura,nombreAsignatura,cantidadUV,observacion) VALUES(107,'Trigonometria',5,'')
INSERT INTO SistemaMatricula.dbo.Asignatura(idAsignatura,nombreAsignatura,cantidadUV,observacion) VALUES(108,'Calculo I',5,'')
INSERT INTO SistemaMatricula.dbo.Asignatura(idAsignatura,nombreAsignatura,cantidadUV,observacion) VALUES(109,'Ecuaciones Diferenciales',3,'')
INSERT INTO SistemaMatricula.dbo.Asignatura(idAsignatura,nombreAsignatura,cantidadUV,observacion) VALUES(110,'Dibujo I',2,'')

INSERT INTO SistemaMatricula.dbo.Estudiante(idEstudiante,nombre,UVDisponibles) VALUES(1000,'Juanito',25)
INSERT INTO SistemaMatricula.dbo.Estudiante(idEstudiante,nombre,UVDisponibles) VALUES(1100,'Mariano',25)
INSERT INTO SistemaMatricula.dbo.Estudiante(idEstudiante,nombre,UVDisponibles) VALUES(1200,'Laura',25)
INSERT INTO SistemaMatricula.dbo.Estudiante(idEstudiante,nombre,UVDisponibles) VALUES(1300,'Scarleth',25)
INSERT INTO SistemaMatricula.dbo.Estudiante(idEstudiante,nombre,UVDisponibles) VALUES(1400,'Armando',25)
INSERT INTO SistemaMatricula.dbo.Estudiante(idEstudiante,nombre,UVDisponibles) VALUES(1500,'Jose',5)
INSERT INTO SistemaMatricula.dbo.Estudiante(idEstudiante,nombre,UVDisponibles) VALUES(1600,'Alex',10)
INSERT INTO SistemaMatricula.dbo.Estudiante(idEstudiante,nombre,UVDisponibles) VALUES(1700,'Monica',16)

INSERT INTO SistemaMatricula.dbo.Matricula(idMatrucula,idEstudiante,observacion) VALUES(1,1000,'')
INSERT INTO SistemaMatricula.dbo.Matricula(idMatrucula,idEstudiante,observacion) VALUES(2,1100,'')
INSERT INTO SistemaMatricula.dbo.Matricula(idMatrucula,idEstudiante,observacion) VALUES(3,1200,'')
INSERT INTO SistemaMatricula.dbo.Matricula(idMatrucula,idEstudiante,observacion) VALUES(4,1300,'')
INSERT INTO SistemaMatricula.dbo.Matricula(idMatrucula,idEstudiante,observacion) VALUES(5,1400,'')
INSERT INTO SistemaMatricula.dbo.Matricula(idMatrucula,idEstudiante,observacion) VALUES(6,1500,'')
INSERT INTO SistemaMatricula.dbo.Matricula(idMatrucula,idEstudiante,observacion) VALUES(7,1600,'')
INSERT INTO SistemaMatricula.dbo.Matricula(idMatrucula,idEstudiante,observacion) VALUES(8,1700,'')

INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(1000,100,'10:00','11:00',15)
INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(1001,100,'10:00','11:00',15)
INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(1000,101,'10:00','11:00',15)
INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(0900,102,'09:00','10:00',15)
INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(0800,103,'08:00','09:00',25)
INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(1100,104,'11:00','12:00',40)
INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(1300,105,'13:00','14:00',40)
INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(0700,106,'07:00','07:00',35)
INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(1200,107,'12:00','13:00',10)
INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(1400,108,'14:00','15:00',10)
INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(0700,109,'07:00','07:00',10)
INSERT INTO SistemaMatricula.dbo.Seccion(idSeccion, idAsignatura, HI, HF, cuposdisponibles) VALUES(1000,110,'10:00','11:00',3)

GO
/*
	Insertar una registro en "SeccionMatricula", aqui es necesario el procedimiento almacenado para verificar
	si una seccion ya existe o una misma asignatura con seccion diferente etc.
	Si se inserta correctamente aqui es donde el TRIGGER entra en accion.

	**OBS: Antes de insertar figense como estan las tablas y despues de cada insercion verifiquen lo que va sucediendo
*/
/*
SELECT * FROM SistemaMatricula.dbo.Asignatura
SELECT * FROM SistemaMatricula.dbo.Estudiante
SELECT * FROM SistemaMatricula.dbo.Matricula
SELECT * FROM SistemaMatricula.dbo.Seccion
SELECT * FROM SistemaMatricula.dbo.SeccionMatricula
*/

EXECUTE [dbo].[SPISeccionMatricula] 1, 700, 106, 'E (UV de 25 a 20) y Cupos(de 35 a 34)' --Al ejecutar esta linea se registra la matricula, las UV del estudiante
																						 --disminuye en 5 y los cupos de la seccion en 1

EXECUTE [dbo].[SPISeccionMatricula] 1, 700, 109, 'E (UV de 25 a 20) y Cupos(de 35 a 34)' --Al ejecutar esta linea no se almacena registro, por que ya existe esa 
																						 --seccion (en esa hora ya tiene una clase) aunque la clase sea diferente


EXECUTE [dbo].[SPISeccionMatricula] 6, 1300, 105, 'E (UV de 5 a 0) y Cupos(de 40 a 39)' --Se ejecuta con exito, baja las UV del estudiante y un cupo a la seccion
EXECUTE [dbo].[SPISeccionMatricula] 6, 1000, 110, 'E (UV de 5 a 0) y Cupos(de 40 a 39)' --No se almacena por que el estudiante no tiene UV disponibles

EXECUTE [dbo].[SPISeccionMatricula] 2, 1000, 110, 'E (UV de 25 a 23) y Cupos(de 3 a 2)'  --Estos 3 registros se almacenan correctamente y reduce en 2 las UV
EXECUTE [dbo].[SPISeccionMatricula] 3, 1000, 110, 'E (UV de 25 a 23) y Cupos(de 2 a 1)'  --Reducen a uno los cupos. Para el ejemplo solo habian 3 cupos disponibles
EXECUTE [dbo].[SPISeccionMatricula] 4, 1000, 110, 'E (UV de 25 a 23) y Cupos(de 1 a 0)'  --

EXECUTE [dbo].[SPISeccionMatricula] 5, 1000, 110, 'No se insertara'   -- Este registro no se guarda por que no hay cupos disponibles en la seccion

EXECUTE [dbo].[SPISeccionMatricula] 4, 1000, 101, 'No Pasa nada'  --No se registra por que el estudiante de matricula id(4) Ya tiene una clase en el horario de la seccion 1000

