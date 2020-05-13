-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020 
-- Description:	Esta funcion verifica si el registro de asignatura en SeccionMatriculaEnEspera que se intenta matricular ya existe.
--		        Aqui dará 2 valores:	0: Si la Asignatura No Existe
--										1: Si la Asignatura Si Existe
-- =============================================

CREATE FUNCTION [unah].[fnExisteAsignaturaMatriculadaEnEspera](
		@idMatricula INT,
		@idAsignatura VARCHAR(15)
	)
RETURNS INT
AS
BEGIN
	DECLARE @ExisteAsignaturaEspera INT  = 1;

	IF NOT EXISTS(SELECT TOP(1) *
						FROM ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera	SME
					   WHERE SME.idMatricula = @idMatricula
						 AND SME.idAsignatura = @idAsignatura
				  )
		BEGIN
			SET @ExisteAsignaturaEspera = 0
		END
	ELSE
		BEGIN
			SET @ExisteAsignaturaEspera = 1
		END

	RETURN @ExisteAsignaturaEspera
END
GO
