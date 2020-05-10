
-----LA QUE SE SUPONE QUE ESTOy tratando de hacer para llamar en el procedimiento matricula 
-------y enesta se supone que solo llamaria las funciones de que si hay uv dispnibles, requisitos etc

CREATE FUNCTION VerificarantesMatricula(@idEstudiante INT,
                                        @idAsignatura VARCHAR(15),
										@idMatricula INT,
										@idSeccion INT
								
										)


	RETURNS INT
	AS
	
	BEGIN
	DECLARE @RespUV = (SELECT [dbo].[FnUVdisponibles] (@idMatricula));
	DECLARE @RespUVasignatura = (SELECT [unah].[fnuvAsignatura](@idSeccion, @idAsignatura));
	DECLARE @RespCuposDis = (SELECT [unah].[fncuposSeccion](@idSeccion, @idAsignatura));
	DECLARE @RespRequsito = (SELECT  [unah].[fnCumpleRequisitos](@idMatricula, @idAsignatura));
	DECLARE @respuesta BIT = 1

	IF(@RespUV>= @RespUVasignatura)
	   IF (@RespCuposDis>=1)
	      SET @respuesta = 1;
	   ELSE
	   BEGIN
	     SET @respuesta = 0; 
        END
	     
	ELSE 
	   SET @respuesta= 0; 

	


   
				
    RETURN @respuesta;
    END
    GO
