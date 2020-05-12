-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020 
-- Description:	Esta funcion verifica si el registro de seccion en SeccionMatricula que se intenta matricular ya existe.
--		        Aqui dará 2 valores:	0: Si la seccion No Existe
--										1: Si la seccion Si Existe
-- =============================================

CREATE FUNCTION [unah].[fnExisteSeccionMatriculada](
		@idMatricula INT,
		@idSeccion VARCHAR(15)
	)
RETURNS INT
AS
BEGIN
	DECLARE @ExisteSeccion INT = 1;
	
	IF NOT EXISTS(SELECT TOP(1) *
						FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
					   WHERE SM.idMatricula = @idMatricula
						 AND SM.idSeccion = @idSeccion
				  )
		BEGIN
			SET @ExisteSeccion = 0		
		END
	ELSE
		BEGIN
			SET @ExisteSeccion = 1
		END

	RETURN @ExisteSeccion
END
GO
