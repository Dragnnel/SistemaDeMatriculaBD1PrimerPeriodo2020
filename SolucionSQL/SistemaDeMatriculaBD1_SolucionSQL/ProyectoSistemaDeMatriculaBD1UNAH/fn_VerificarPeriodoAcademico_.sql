-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 05/04/2020 
-- Description:	Verificar si el periodo academico existe
-- =============================================

CREATE FUNCTION [unah].[fnVerificaPeriodoAcademico](
										@pidPeriodo CHAR(3),
										@pfechaInicio DATE ,
										@pidTipoPeriodo INT
										)
RETURNS INT

AS 
BEGIN  
	DECLARE @respuesta INT = 0 ;

	IF EXISTS (SELECT * FROM ProyectoSistemaMatricula.unah.Periodo as P
					WHERE		P.idPeriodo = @pidPeriodo
							AND P.fechaInicio = @pfechaInicio 
							AND P.idTipoPeriodo = @pidTipoPeriodo
							)
				SET @respuesta = 1;	--si existe periodo se mostrara 1 
	ELSE
				SET @respuesta = 0; -- si no existe se mostrara 2 		
	
	RETURN @respuesta;
END 


/*

SELECT * FROM ProyectoSistemaMatricula.unah.Periodo
SELECT [unah].[fnVerificaPeriodoAcademico] ('I','2020-11-01',1) as Respuesta

SELECT [unah].[fnVerificaPeriodoAcademico] ('I','2020-01-01',1) as Respuesta

SELECT * FROM ProyectoSistemaMatricula.unah.Periodo as P
					WHERE P.idPeriodo = 'II' 
					AND P.fechaInicio ='2020-05-01' 
					AND P.idTipoPeriodo = 1
*/