-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/04/2020 9:10:50
-- Description:	Validar la disponibilidad de aula de una seccion en una determinada horas posteriores
-- =============================================
CREATE FUNCTION [unah].[fn_VerificarDisponibilidadDeHorasEnAula] (
																@pidAsignacion VARCHAR(15),
																@pidSeccion VARCHAR(15),
																@pidCodigoAula VARCHAR(25),
																@pidCodigoEdificio VARCHAR (25),
																@pfechaInicioPeriodo DATE,
																@pidTipoPeriodo INT	
															  )													
RETURNS INT														  
AS
BEGIN
	DECLARE @Respuesta INT = 0;
	DECLARE @horaInicialComprobacion INT;
	DECLARE @horaFinalComprobacion INT;

	SET @horaInicialComprobacion = CAST (@pidSeccion AS INT)/100
	
	IF NOT EXISTS (
					SELECT * FROM  ProyectoSistemaMatricula.unah.Seccion AS T1
							WHERE T1.horaInicial= @horaInicialComprobacion*100 
							 AND T1.idCodigoAula = @pidCodigoAula
							 AND T1.idCodigoEdificio = @pidCodigoEdificio
							 AND T1.fechaInicioPeriodo= @pfechaInicioPeriodo 
							 AND T1.idTipoPeriodo = @pidTipoPeriodo
			   )
		BEGIN
				SELECT @horaFinalComprobacion = T1.horaFinal  FROM  ProyectoSistemaMatricula.unah.Seccion AS T1
							WHERE T1.horaInicial= @horaInicialComprobacion*100 
							 AND T1.idCodigoAula = @pidCodigoAula
							 AND T1.idCodigoEdificio = @pidCodigoEdificio
							 AND T1.fechaInicioPeriodo= @pfechaInicioPeriodo 
							 AND T1.idTipoPeriodo = @pidTipoPeriodo

			
			IF NOT EXISTS (
							SELECT * FROM  ProyectoSistemaMatricula.unah.Seccion AS T1
								WHERE T1.horaInicial= @horaFinalComprobacion
								 AND T1.idCodigoAula = @pidCodigoAula
								 AND T1.idCodigoEdificio = @pidCodigoEdificio
								 AND T1.fechaInicioPeriodo= @pfechaInicioPeriodo 
								 AND T1.idTipoPeriodo = @pidTipoPeriodo
							)

			SET @Respuesta = 1;
			--print 'Existe para hacer el cambio'

		END
	ELSE
		BEGIN
			SET @Respuesta = 0;
			--print 'Existe una seccion a esa hora en esa aula.'
		END

		RETURN @Respuesta;
END 
