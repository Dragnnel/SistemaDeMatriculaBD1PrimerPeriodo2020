-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020  
-- Description:	Esta funcion verifica si ya tiene una asignatura matriculada a la hora que se esta intentando matricular otro registro, ya
--				sea en lista de espera o en la seccion con cupos.
--		        Aqui dará 2 valores:	0: Si No Existe matriculada una clase a esa misma hora en la lista de espera
--										1: Si Existe matriculada una clase a esa misma hora en la lista de espera
-- =============================================

CREATE FUNCTION [unah].[fnChoqueDeHoraMatriculadaEnEspera](
		@horaAsignatura INT,
		@idMatricula INT
	)
RETURNS INT
AS
BEGIN
	DECLARE @ChocaHoraEnEspera INT = 1;

	IF @horaAsignatura NOT IN(SELECT S.horaInicial
									   FROM ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera SME
								 INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
										 ON (	S.idSeccion = SME.idSeccion
										AND S.idAsignatura = SME.idAsignatura)
									  WHERE SME.idMatricula = @idMatricula 
							)
		BEGIN
			SET @ChocaHoraEnEspera = 0
		END
	ELSE
		BEGIN
			SET @ChocaHoraEnEspera = 1
		END

	RETURN @ChocaHoraEnEspera
END
GO



--