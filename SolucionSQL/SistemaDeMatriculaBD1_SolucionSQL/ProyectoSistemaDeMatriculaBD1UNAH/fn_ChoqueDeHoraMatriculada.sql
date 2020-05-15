-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020  
-- Description:	Esta funcion verifica si ya tiene una asignatura matriculada a la hora que se esta intentando matricular otra.
--		        Aqui dará 2 valores:	0: Si No Existe matriculada una clase a esa misma hora
--										1: Si Existe matriculada una clase a esa misma hora
-- =============================================

CREATE FUNCTION [unah].[fnChoqueDeHoraMatriculada](
		@horaAsignatura INT,
		@idMatricula INT
	)
RETURNS INT
AS
BEGIN
	DECLARE @ChocaHora INT = 1;

	IF @horaAsignatura NOT IN(SELECT S.horaInicial
									   FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
								 INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
										 ON (	S.idSeccion = SM.idSeccion
										AND S.idAsignatura = SM.idAsignatura)
									  WHERE SM.idMatricula = @idMatricula 
							)
		BEGIN
			SET @ChocaHora = 0
		END
	ELSE
		BEGIN
			SET @ChocaHora = 1
		END

	RETURN @ChocaHora
END
GO


--
