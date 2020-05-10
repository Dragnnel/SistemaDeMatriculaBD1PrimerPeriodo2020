/*
	Funcion para obtener la cantidad de unidades valorativas disponibles del estudiante
*/
CREATE FUNCTION [unah].[fnuvEstudiante](
		@idmatricula INT
	)
RETURNS INT
AS
BEGIN
	DECLARE @uvDisponibles INT;

	SET @uvDisponibles = (SELECT E.UVDisponibles
							       FROM ProyectoSistemaMatricula.unah.Matricula M
							 INNER JOIN ProyectoSistemaMatricula.unah.Estudiante E
									 ON E.idEstudiante = M.idEstudiante
								  WHERE M.idMatricula = @idmatricula
						  )

	RETURN @uvDisponibles
END
GO

/*
	Funcion para obtener la cantidad de unidades valorativas de las asignaturas
*/
CREATE FUNCTION [unah].[fnuvAsignatura](
		@idSeccion INT,
		@idAsignatura VARCHAR(15)
	)
RETURNS INT
AS
BEGIN
	DECLARE @uvAsignatura INT
	SET @uvAsignatura = (SELECT A.unidadesValorativas
								  FROM ProyectoSistemaMatricula.unah.Seccion S
							INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
								    ON A.idAsignatura = S.idAsignatura
								 WHERE S.idSeccion = @idSeccion
								   AND S.idAsignatura = @idAsignatura
						  )

	RETURN @uvAsignatura
END
GO

/*
	Funcion para obtener la cantidad de cupos disponibles en una determinada seccion
*/
CREATE FUNCTION [unah].[fncuposSeccion](
		@idSeccion INT,
		@idAsignatura VARCHAR(15)
	)
RETURNS INT
AS
BEGIN
	DECLARE @cuposDisponibles INT

	SET @cuposDisponibles = (SELECT S.cuposDisponibles
								 FROM ProyectoSistemaMatricula.unah.Seccion S
								WHERE S.idSeccion = @idSeccion
								  AND S.idAsignatura = @idAsignatura
							 )
	
	RETURN @cuposDisponibles
END
GO