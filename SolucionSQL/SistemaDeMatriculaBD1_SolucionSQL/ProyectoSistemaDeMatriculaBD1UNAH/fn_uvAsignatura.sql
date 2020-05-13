-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/04/2020 
-- Description: Funcion para obtener la cantidad de unidades valorativas de las asignaturas
-- =============================================

CREATE FUNCTION [unah].[fnuvAsignatura](
		@idSeccion  VARCHAR(15),
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
