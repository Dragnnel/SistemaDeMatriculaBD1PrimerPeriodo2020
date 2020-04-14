/*
	Trigger que se activa al momento de insertar o ingresar un nuevo registro en la
	tabla "SeccionMatricula".

	*Lo que hará es: 
		1- Revisar que dicha seccion y matricula no exista en la base de datos.
		2- Revisar que no se monten secciones en una misma hora
		3- Que el estudiante tenga las unidades valorativas necesarias.
		4- Que la seccion tenga cupos disponibles.
		5- insertar el registro y actualizar las UV del estudiante y los cupos de la seccion
*/
/*
SELECT * FROM SistemaMatricula.dbo.Asignatura
SELECT * FROM SistemaMatricula.dbo.Estudiante
SELECT * FROM SistemaMatricula.dbo.Matricula
SELECT * FROM SistemaMatricula.dbo.Seccion
SELECT * FROM SistemaMatricula.dbo.SeccionMatricula
*/
ALTER TRIGGER InsertarSeccionMatricula ON SistemaMatricula.dbo.SeccionMatricula
AFTER INSERT
AS
DECLARE @UVAsignatura INT
DECLARE @UVEstudiante INT
DECLARE @idEstudiante INT
DECLARE @idMatricula INT
DECLARE @idSeccion INT
DECLARE @cuposDisponibles INT
DECLARE @idAsignatura INT

SET @UVAsignatura = (SELECT A.cantidadUV
						FROM SistemaMatricula.dbo.Asignatura A
						INNER JOIN inserted T1
						ON T1.idAsignatura = A.idAsignatura
					 )

SET @UVEstudiante = (SELECT E.UVDisponibles
						FROM SistemaMatricula.dbo.Estudiante E
						INNER JOIN SistemaMatricula.dbo.Matricula M
						ON M.idEstudiante = E.idEstudiante
						INNER JOIN inserted T1
						ON T1.idMatrucula = M.idMatrucula
					 )

SET @idEstudiante = (SELECT E.idEstudiante
						FROM SistemaMatricula.dbo.Estudiante E
						INNER JOIN SistemaMatricula.dbo.Matricula M
						ON M.idEstudiante = E.idEstudiante
						INNER JOIN inserted T1
						ON T1.idMatrucula = M.idMatrucula
					 )

SET @idMatricula = (SELECT M.idMatrucula
						FROM SistemaMatricula.dbo.Matricula M
						INNER JOIN inserted T1
						ON T1.idMatrucula = M.idMatrucula)

SET @idSeccion = (SELECT S.idSeccion
						FROM SistemaMatricula.dbo.Seccion S
						INNER JOIN inserted T1
						ON T1.idSeccion = S.idSeccion
						AND T1.idAsignatura = S.idAsignatura)

SET @cuposDisponibles = (SELECT S.cuposdisponibles
							FROM SistemaMatricula.dbo.Seccion S
							INNER JOIN inserted T1
							ON T1.idSeccion = S.idSeccion
							AND T1.idAsignatura = S.idAsignatura)

SET @idAsignatura = (SELECT S.idAsignatura
						FROM SistemaMatricula.dbo.Seccion S
						INNER JOIN inserted T1
						ON T1.idSeccion = S.idSeccion
						AND T1.idAsignatura = S.idAsignatura)
---------------------------------------------------------------

IF (@UVAsignatura <= @UVEstudiante) AND (@cuposDisponibles > 0)
	BEGIN
		UPDATE  SistemaMatricula.dbo.Estudiante
			SET UVDisponibles = UVDisponibles - @UVAsignatura
		  WHERE idEstudiante = @idEstudiante

		UPDATE  SistemaMatricula.dbo.Seccion
			SET cuposdisponibles = cuposdisponibles - 1
		  WHERE idSeccion = @idSeccion
			AND idAsignatura = @idAsignatura

		SELECT 1 AS RESULTADO
		PRINT 'Seccion matriculada con exito'
	END
ELSE
	BEGIN
		DELETE SistemaMatricula.dbo.SeccionMatricula
			WHERE idMatrucula = @idMatricula
			  AND idSeccion = @idSeccion
			  AND idAsignatura = @idAsignatura

		SELECT 0 AS RESULTADO
		PRINT 'No tiene unidades valorativas disponibles o no hay cupos disponibles en la seccion '
	END
GO