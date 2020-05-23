-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 12/05/2020 
-- Description:	Verificar si existe un estudiante 
-- =============================================


CREATE FUNCTION [unah].[fnVerificarEstudiante](
										@idEstudiante VARCHAR(11)
								
										)


	RETURNS INT
	AS
	
	BEGIN
	DECLARE @respuesta BIT;

	set @respuesta = 0;

		
	IF EXISTS (SELECT * FROM ProyectoSistemaMatricula.unah.Estudiante as T1
					WHERE T1.idEstudiante = @idEstudiante)
      	BEGIN
			-- 'Si existe el Estudiante';
			SET @respuesta = 1;	
		
			END
		ELSE
		BEGIN
		  --  'No existe estudiante, con ese registro';
			SET @respuesta = 0;
	
			
		END 			
			RETURN @respuesta ;
END 
GO



/*
SELECT [unah].[VerificarEstudiante](20191018932) estudiante que existe
SELECT [unah].[VerificarEstudiante](7058640)   Estudiante que no esta registrado
*/