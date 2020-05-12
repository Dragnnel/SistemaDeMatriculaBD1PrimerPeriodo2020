-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020 
-- Description:	Esta funcion verifica si el registro de asignatura en SeccionMatricula que se intenta matricular ya existe.
--		        Aqui dará 2 valores:	0: Si la Asignatura No Existe
--										1: Si la Asignatura Si Existe
-- =============================================

CREATE FUNCTION [unah].[fnExisteAsignaturaMatriculada](
		@idMatricula INT,
		@idAsignatura VARCHAR(15)
	)
RETURNS INT
AS
BEGIN
	DECLARE @ExisteAsignatura INT  = 1;

	IF NOT EXISTS(SELECT TOP(1) *
						FROM ProyectoSistemaMatricula.unah.SeccionMatricula	SM
					   WHERE SM.idMatricula = @idMatricula
						 AND SM.idAsignatura = @idAsignatura
				  )
		BEGIN
			SET @ExisteAsignatura = 0
		END
	ELSE
		BEGIN
			SET @ExisteAsignatura = 1
		END

	RETURN @ExisteAsignatura
END
GO
