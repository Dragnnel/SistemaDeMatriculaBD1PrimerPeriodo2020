-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 05/04/2020 
-- Description:	Verificar si el periodo academico existe
-- =============================================
--SELECT [unah].[fn_VerificaEmpleado] ('II','2020-05-01',1)

ALTER FUNCTION [unah].[fn_VerificaPeriodoAcademico](
										@pidPeriodo CHAR(3),
										@pfechaInicio DATE ,
										@pidTipoPeriodo INT
										)
RETURNS INT

AS 

BEGIN
	DECLARE @respuesta INT
	
	IF EXISTS (SELECT * FROM ProyectoSistemaMatricula.unah.Periodo as P
					WHERE		P.idPeriodo =@pidPeriodo
							AND P.fechaInicio = @pfechaInicio 
							AND P.idTipoPeriodo = @pidTipoPeriodo
							)
			BEGIN
			-- 'Si existe el periodo';
			SET @respuesta = 1;	
			END
	ELSE
		BEGIN
		  --  'No existe el periodo, con ese registro';
			SET @respuesta = 0;
		END 			
			RETURN @respuesta;
END 

/*

SELECT * FROM ProyectoSistemaMatricula.unah.Periodo
SELECT [unah].[fn_VerificaEmpleado] ('II','2020-05-01',1)


SELECT * FROM ProyectoSistemaMatricula.unah.Periodo as P
					WHERE P.idPeriodo = 'II' AND P.fechaInicio ='2020-05-01'  AND P.idTipoPeriodo = 1
*/