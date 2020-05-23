-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 05/04/2020 
-- Description:	Verificar si existe docente 
-- =============================================

CREATE FUNCTION [unah].[fnVerificaEmpleado](
										@pidEmpleado INT,
                                        @pfechaInicioCargo VARCHAR(15)
										)
RETURNS INT

AS 

BEGIN
	DECLARE @respuesta INT;
	
	IF EXISTS (SELECT * FROM ProyectoSistemaMatricula.unah.Docente as D
					WHERE D.idDocente = @pidEmpleado AND D.fechaInicioCargo = @pfechaInicioCargo)
			BEGIN
			-- 'Si existe el docente'
			SET @respuesta = 1;	
			END
	ELSE
		BEGIN
		  --  'No existe el docente, con ese registro'
			SET @respuesta = 0;
		END 			
			RETURN @respuesta;
END 

/*

SELECT * FROM ProyectoSistemaMatricula.unah.Docente
SELECT [unah].[fn_VerificaEmpleado] (1,'2019-01-01') as Respuesta
SELECT [unah].[fn_VerificaEmpleado] (1,'2019-11-01') as Respuesta
*/