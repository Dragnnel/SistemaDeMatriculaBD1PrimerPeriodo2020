/*
	Historial del estudiante

	Datos Personales: Cuenta, nombre, carrera, centro,
					  indice global, indice periodo

	Datos de Asignatura: Codigo, asignatura, UV, Seccion,
						 Anio, periodo, calificacion, OBS
*/


/*
	CONSULTA PARA OBTENER los datos personales del historial
*/
SELECT *
	FROM ProyectoSistemaMatricula.unah.Carrera

SELECT *
	FROM ProyectoSistemaMatricula.unah.CentroUniversitario

SELECT *
	FROM ProyectoSistemaMatricula.unah.Persona

SELECT *
	FROM ProyectoSistemaMatricula.unah.Estudiante

SELECT *
	FROM ProyectoSistemaMatricula.unah.HistorialAcademico

-----------------------------------------------------------------------------------------------------------
SELECT E.idEstudiante AS Cuenta,
	   CONCAT(P.primerNombre,' ', P.segundoNombre,' ', P.primerApellido,' ', P.segundoApellido) AS Nombre,
	   C.nombreCarrera AS Carrera,
	   CU.centroUniversitario AS Centro,
	   HA.indiceGlobal,
	   HA.indicePeriodo
	FROM ProyectoSistemaMatricula.unah.Persona P
	INNER JOIN ProyectoSistemaMatricula.unah.Estudiante E
	ON E.idpersona = P.idPersona
	INNER JOIN ProyectoSistemaMatricula.unah.Carrera C
	ON C.idCarrera = E.idCarrera
	INNER JOIN ProyectoSistemaMatricula.unah.CentroUniversitario CU
	ON CU.idCentro = E.idCentro
	INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico HA
	ON HA.idEstudiante = E.idEstudiante
	WHERE E.idEstudiante = 1  --Cuenta especifica del estudiante



/*
	CONSULTA PARA OBTENER los Datos de Asignatura del historial
	Datos de Asignatura: Codigo, asignatura, UV, Seccion,
						 Anio, periodo, calificacion, OBS
*/
SELECT *
	FROM ProyectoSistemaMatricula.unah.Estudiante

SELECT *
	FROM ProyectoSistemaMatricula.unah.HistorialAcademico

SELECT *
	FROM ProyectoSistemaMatricula.unah.Matricula

SELECT *
	FROM ProyectoSistemaMatricula.unah.SeccionMatricula

SELECT *
	FROM ProyectoSistemaMatricula.unah.Seccion
-----------------------------------------------------------------------------------------------------------
DECLARE @idEstudiante INT = 1
DECLARE @idHistorial INT
DECLARE @cantidaadMatriculas INT


SET @idHistorial = (SELECT HA.idHistorial
						FROM ProyectoSistemaMatricula.unah.HistorialAcademico HA
						WHERE HA.idEstudiante = @idEstudiante
					)

SET @cantidaadMatriculas = (SELECT COUNT(*)
								FROM ProyectoSistemaMatricula.unah.Matricula M
								WHERE M.idEstudiante = @idEstudiante
								  AND M.idHistorial = @idHistorial)


SELECT *
	FROM ProyectoSistemaMatricula.unah.Matricula M
	INNER JOIN ProyectoSistemaMatricula.unah.SeccionMatricula SM
	ON SM.idMatricula = M.idMatricula
	INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
	ON (S.idSeccion = SM.idSeccion AND S.idAsignatura = SM.idAsignatura)
	INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
	ON A.idAsignatura = S.idAsignatura


-----------------------------------------------------------------------------------------------------------
/*
DECLARE @matriculaID as nvarchar(256)
DECLARE @estudianteID as nvarchar(50)


DECLARE Matricula_Cursor CURSOR FOR  
SELECT M.idMatricula, M.idEstudiante 
FROM ProyectoSistemaMatricula.unah.Matricula M   
WHERE M.idEstudiante = @idEstudiante
  AND M.idHistorial  = @idHistorial;  

OPEN Matricula_Cursor;  
FETCH NEXT FROM Matricula_Cursor INTO @matriculaID, @estudianteID;  
WHILE @@FETCH_STATUS = 0  
   BEGIN  
      Print '   ' + @matriculaID + '      '+  @estudianteID;
      FETCH NEXT FROM Matricula_Cursor INTO @matriculaID, @estudianteID;  
   END;  
CLOSE Matricula_Cursor;  
DEALLOCATE Matricula_Cursor;  
GO 
*/