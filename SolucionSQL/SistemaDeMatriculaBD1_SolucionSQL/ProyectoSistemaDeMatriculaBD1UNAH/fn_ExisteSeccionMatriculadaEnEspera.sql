-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020 
-- Description:	Esta funcion verifica si el registro de seccion en SeccionMatriculaEnEspera que se intenta matricular ya existe.
--		        Aqui dará 2 valores:	0: Si la seccion No Existe
--										1: Si la seccion Si Existe
-- =============================================

CREATE FUNCTION [unah].[fnExisteSeccionMatriculadaEnEspera](
		@idMatricula INT,
		@idSeccion VARCHAR(15)
	)
RETURNS INT
AS
BEGIN
	DECLARE @ExisteSeccionEnEspera INT = 1;
	
	IF NOT EXISTS(SELECT TOP(1) *
						FROM ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera SME
					   WHERE SME.idMatricula = @idMatricula
						 AND SME.idSeccion = @idSeccion
				  )
		BEGIN
			SET @ExisteSeccionEnEspera = 0		
		END
	ELSE
		BEGIN
			SET @ExisteSeccionEnEspera = 1
		END

	RETURN @ExisteSeccionEnEspera
END
GO