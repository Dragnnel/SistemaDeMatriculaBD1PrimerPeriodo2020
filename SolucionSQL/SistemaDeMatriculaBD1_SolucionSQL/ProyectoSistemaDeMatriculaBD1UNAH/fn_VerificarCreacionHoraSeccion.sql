-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 05/04/2020 
-- Description:	Verificar la horas que se ingresen para la seccion sean coherentes y que no se salgan del rango de 6 am a 8 pm
-- =============================================

CREATE FUNCTION [unah].[fnVerificarCreacionHoraSeccion](
										 @pidSeccion VARCHAR(15),
								         @phoraInicial INT,
										 @phoraFinal INT
										)
RETURNS INT

AS 

BEGIN

DECLARE @Seccion INT;
DECLARE @horaInicial INT;
DECLARE @horaFinal INT;
DECLARE @Respuesta INT = 0;

SET @Seccion = CAST(@pidSeccion as INT) /100; --Convierte varchar a int y el resultado lo divide en 100 para obtener la hora en hora militar
SET @horaInicial = @phoraInicial/100; --se divide la hora para tener en hora militar 
SET @horaFinal = @phoraFinal / 100;

IF (@Seccion = @horaInicial) --Se comprueba que la hora de inicio sea igual que la de la seccion 
	BEGIN 
		IF (@horaInicial > = 5 AND @horaInicial <=20) AND (@horaFinal >=6 AND @horaFinal <= 21) --se pone un rango de horas donde la clase se puede crear. 
			BEGIN
				IF(@horaInicial < @horaFinal) --la hora final siempre debe ser mayor a la inicial 
					BEGIN
					--PRINT 'Correcto'
					SET @Respuesta = 1 ;
					END
			END
	END
ELSE 
	--PRINT 'La hora no es acorde a la seccion, verifique.' 
	SET @Respuesta = 0 ;
		
			RETURN @respuesta;
END 

/*
SELECT * FROM ProyectoSistemaMatricula.unah.Seccion
SELECT [unah].[fn_VerificarCreacionHoraSeccion] ('0801',0800,0900) as Respuesta

SELECT [unah].[fn_VerificarCreacionHoraSeccion] ('0901',0800,0900) as Respuesta

SELECT [unah].[fn_VerificarCreacionHoraSeccion] ('0901',0900,0700) as Respuesta
*/