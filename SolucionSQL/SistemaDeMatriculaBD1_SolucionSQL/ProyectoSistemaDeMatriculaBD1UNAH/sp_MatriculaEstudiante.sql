-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 12/04/2020 
-- Description:	Procedimiento que me llama la funcion DiaMatricula y funcion UVEstudiante,uvAsignatura
--y cumpleRequisitos y si todas esas funciones se cumplen el estudiante puede matricular
-- =============================================

CREATE PROCEDURE MatriculaEstudiante(@idMatricula INT,
									 @confirmacionPago BIT,
									 @fechaInicio DATE,
									 @fechaFin DATE,
									 @idPeriodo CHAR (3),
									 @fechaInicioPeriodo DATE,
									 @idTipoPeriodo INT,
									 @idEstudiante INT,
									 @idHistorial INT,
									 @pmensaje VARCHAR(50) OUT )
									                   
As
BEGIN
    DECLARE @resp INT =(SELECT [dbo].[VerificarDiaMatricula](@idEstudiante));
	DECLARE @respuestaFN INT;
	

	IF  @resp = 1
	    BEGIN
		-----LLamar funcion
	  
			SET @pmensaje = 'MATRICULA CON EXITO';
        END

	ELSE

	   SET @pmensaje = 'SU DIA DE MATRICULA YA PASO';

	 



END
GO