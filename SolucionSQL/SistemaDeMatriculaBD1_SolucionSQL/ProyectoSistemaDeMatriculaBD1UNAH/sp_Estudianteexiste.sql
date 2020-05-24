-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 12/04/2020 
-- Description:	Procedimiento que me llama la funcion 
--Verificar estudiante y devuelve un msj si hay o no registro del estudiante
-- =============================================

CREATE PROCEDURE [unah].[spEstudianteExiste](
										 @idEstudiante VARCHAR(11),
										  @pmensaje VARCHAR(50) OUT)
								
									                   
As
BEGIN
    DECLARE @resp INT =(SELECT [unah].[fnVerificarEstudiante](@idEstudiante));
	

	IF  @resp = 1
	    BEGIN
		
	  
			SET @pmensaje = 'SI HAY REGISTRO DEL ESTUDIANTE';
        END

	ELSE

	   SET @pmensaje = 'EL ESTUDIANTE NO ESTA REGISTRADO';

	 



END
GO

EXECUTE [unah].[spEstudianteExiste] '20173452710' , '  '