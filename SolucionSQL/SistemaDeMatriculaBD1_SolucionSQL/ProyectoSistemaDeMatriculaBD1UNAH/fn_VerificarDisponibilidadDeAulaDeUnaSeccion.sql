-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/04/2020 9:10:50
-- Description:	Validar la disponibilidad de aula de una seccion en una determinada hora 
-- =============================================
CREATE FUNCTION [unah].[fnVerificarDisponibilidadDeAulaDeUnaSeccion] (
																@pidAsignatura  VARCHAR(15),
																@pidSeccion VARCHAR(15),
																@pidDias INT,
																@pidCodigoAula VARCHAR(25),
																@pidCodigoEdificio VARCHAR (25),
																@pfechaInicioPeriodo DATE,
																@pidTipoPeriodo INT	
																	 )													
RETURNS INT														  
AS
BEGIN
	DECLARE @Respuesta INT =0;
	DECLARE @horaComprobacion INT;
	DECLARE @uvAsignatura INT;
	DECLARE @Dias INT;
	 
	SET @horaComprobacion =  CAST (@pidSeccion AS INT)/100;--convierte en hora militar eliminando las secciones 1,2,3,etc

	SELECT @uvAsignatura = A.unidadesValorativas FROM  ProyectoSistemaMatricula.unah.Asignatura AS A
								WHERE A.idAsignatura = @pidAsignatura; --obtiene la uv de la asignatura

	SELECT @Dias = idDias  FROM ProyectoSistemaMatricula.unah.Dias WHERE idDias=@pidDias

	IF  NOT EXISTS (
					SELECT * FROM  ProyectoSistemaMatricula.unah.Seccion AS T1
							WHERE T1.horaInicial= @horaComprobacion*100
							 AND T1.idCodigoAula = @pidCodigoAula
							 AND T1.idCodigoEdificio = @pidCodigoEdificio
							 AND T1.fechaInicioPeriodo= @pfechaInicioPeriodo 
							 AND T1.idTipoPeriodo = @pidTipoPeriodo
			   ) --se comprueba si no existe en el aula y la hora senialada
		BEGIN
					/* Variable auxiliar para ver cuantas hora puede durar la seccion */
			IF(@uvAsignatura >= 9) AND (@Dias=1)
				BEGIN
				 SET @Respuesta = 6; --a estas secciones se le puede asignar 6 horas
				END

			IF(@uvAsignatura >= 6) AND (@uvAsignatura <= 8) AND (@Dias=1)
				 BEGIN
				 SET @Respuesta = 2; --a estas secciones se le puede asignar 2 horas
				 END

			IF(@uvAsignatura >= 3) AND @uvAsignatura <= 5 AND ((@Dias=2)
														  OR  (@Dias=3)
														  OR  (@Dias=4)
														  OR  (@Dias=5)
														  OR  (@Dias=6)
															 )--a estas secciones se le puede asignar 1 horas
				BEGIN
					SET @Respuesta = 1; 
				END

			IF(@uvAsignatura  = 4) AND ((@Dias=7)
									 OR (@Dias=8)
									 OR (@Dias=9)
									 OR (@Dias=10)
									 OR (@Dias=11)
									 OR (@Dias=12))
				BEGIN
					SET @Respuesta = 4; --a estas secciones se le puede asignar 4 horas
				END

			IF(@uvAsignatura  = 3) AND ((@Dias=7)
									 OR (@Dias=8)
									 OR (@Dias=9)
									 OR (@Dias=10)
									 OR (@Dias=11)
									 OR (@Dias=12))
				BEGIN
					SET @Respuesta = 3; --a estas secciones se le puede asignar 4 horas
				END

			IF(@uvAsignatura  = 2) AND ((@Dias=7)
									 OR (@Dias=8)
									 OR (@Dias=9)
									 OR (@Dias=10)
									 OR (@Dias=11)
									 OR (@Dias=12))
				BEGIN
					SET @Respuesta = 2; --a estas secciones se le puede asignar 4 horas
				END
		END
	ELSE
		BEGIN
			SET @Respuesta = 0;
			--print 'Existe una seccion a esa hora en esa aula.'
		END

		RETURN @Respuesta;
END 

/*
SELECT * FROM ProyectoSistemaMatricula.unah.Aula
SELECT * FROM ProyectoSistemaMatricula.unah.Asignatura
SELECT * FROM  ProyectoSistemaMatricula.unah.Dias
SELECT * FROM ProyectoSistemaMatricula.unah.Seccion

SELECT [unah].[fnVerificarDisponibilidadDeAulaDeUnaSeccion] (@pidAsignatura ,@pidSeccion,@pidDias,@pidCodigoAula,@pidCodigoEdificio, @pfechaInicioPeriodo,@pidTipoPeriodo)

SELECT [unah].[fnVerificarDisponibilidadDeAulaDeUnaSeccion] ('FS200' ,'1100',2,'101','H1', '2020-01-01',2)--0
SELECT [unah].[fnVerificarDisponibilidadDeAulaDeUnaSeccion] ('MM201' ,'1100',5,'101','F1', '2020-01-01',2)--1
SELECT [unah].[fnVerificarDisponibilidadDeAulaDeUnaSeccion] ('PA104' ,'0700',11,'101','H1', '2020-01-01',1)  ---3
SELECT [unah].[fnVerificarDisponibilidadDeAulaDeUnaSeccion] ('BI043' ,'1100',9,'101','B2', '2020-01-01',2)--4
SELECT [unah].[fnVerificarDisponibilidadDeAulaDeUnaSeccion] ('RR174' ,'1000',7,'101','D1', '2020-01-01',1)--2

SELECT * FROM ProyectoSistemaMatricula.unah.Seccion AS T1
							WHERE  T1.idSeccion = 7*100
							 AND T1.idCodigoAula = '101'
							 AND T1.idCodigoEdificio = 'F1'
							 AND T1.fechaInicioPeriodo='2020-01-01'
							 AND T1.idTipoPeriodo = 1
																	


*/
