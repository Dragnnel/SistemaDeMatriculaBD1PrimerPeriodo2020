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
    DECLARE @resp INT = (SELECT [dbo].[DiaMatriculaEstudiantes](@idEstudiante));
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