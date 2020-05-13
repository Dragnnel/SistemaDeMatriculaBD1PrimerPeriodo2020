-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/04/2020 
-- Description:	Funcion para obtener la cantidad de unidades valorativas disponibles del estudiante
-- =============================================

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

