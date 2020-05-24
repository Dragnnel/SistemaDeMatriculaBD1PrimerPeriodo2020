-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 08/05/2020
-- Description:	Cambiar el docente de una seccion creada 
-- =============================================

CREATE PROCEDURE [unah].[spCambioCarrera](@idEstudiante VARCHAR(11),
								@idcarrera INT,
							    @pmensaje VARCHAR(50) OUT )
									                   
As
BEGIN
   
	DECLARE @respuestaFN INT =(SELECT [unah].[fnRequisitosCambioCarrera](@idEstudiante, @idCarrera));;
	
	 
		IF (@respuestaFN = 1)
	    BEGIN
		     UPDATE ProyectoSistemaMatricula.unah.Estudiante  SET idCarrera = @idcarrera
			 WHERE @idEstudiante= idEstudiante
			SET @pmensaje = 'SU SOLICITUD DE CAMBIO DE CARRERA HA SIDO ACEPTADA';
			
		END
        

	ELSE

	   SET @pmensaje = 'SU SOLICITUD HA SIDO DENEGADA';

	 

END
GO



