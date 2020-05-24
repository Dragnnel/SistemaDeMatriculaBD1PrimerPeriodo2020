SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO 
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 25/04/2020
-- Description:	Ingreso de una nueva seccion , verificando docente, periodo y hora de inicio y fin 
-- =============================================
CREATE PROCEDURE [unah].[spCreadorDeNuevaSeccion](
															 @pidAsignatura  VARCHAR(15),
															 @pidSeccion VARCHAR(15),
															 @phoraInicial INT,
															 @pidDias INT,
															 @pidCodigoAula VARCHAR(25),
															 @pidCodigoEdificio VARCHAR (25),
															 @pobservaciones VARCHAR(300),
															 @pcuposDisponibles INT,
															 @pidTipoSeccion INT,
															 @pidDocente INT,
															 @pfechaInicioCargo DATE,
															 @pidPeriodo CHAR(3),
															 @pfechaInicioPeriodo DATE,
															 @pidTipoPeriodo INT
													  )		
AS
SET NOCOUNT ON;

BEGIN TRY 
	--Verifica si la seccion, no esta creada
	DECLARE  @phoraFinal INT;
	DECLARE  @CalculoHoraFinal INT;
	--DECLARE		@HI INT ;

	--SET @HI = CAST(@pidSeccion AS INT)
	SELECT @phoraFinal =  [unah].[fnVerificarDisponibilidadDeAulaDeUnaSeccion] (@pidAsignatura ,@pidSeccion,@pidDias,@pidCodigoAula,@pidCodigoEdificio, @pfechaInicioPeriodo,@pidTipoPeriodo);
	SET @CalculoHoraFinal = @phoraInicial + @phoraFinal*100;

	IF NOT EXISTS (SELECT * FROM  ProyectoSistemaMatricula.unah.Seccion AS T1
							WHERE T1.idAsignatura = @pidAsignatura AND T1.idSeccion = @pidSeccion AND T1.idCodigoAula = @pidCodigoAula AND T1.idCodigoEdificio = @pidCodigoEdificio AND T1.idPeriodo =@pidPeriodo AND T1.fechaInicioPeriodo= @pfechaInicioPeriodo AND T1.idTipoPeriodo = @pidTipoPeriodo)
		BEGIN 

			 IF (SELECT [unah].[fnVerificarCreacionHoraSeccion] (@pidSeccion,@phoraInicial,@CalculoHoraFinal)) = 1 --Verificar si la hora inicial y final este acorde a la seccion
					AND (SELECT [unah].[fnValidarUbicacionSeccion] (@pidCodigoAula,@pidCodigoEdificio,@pcuposDisponibles)) = 1 --Verifica si los datos de ubicacion son correctos y si caben en los cupos del aula 
					AND (SELECT [unah].[fnVerificaPeriodoAcademico] (@pidPeriodo,@pfechaInicioPeriodo,@pidTipoPeriodo) )=1 --verifica que si se ingreso un periodo correcto 
					AND (SELECT [unah].[fnVerificaEmpleado] (@pidDocente,@pfechaInicioCargo))=1 --	verifica si existe el docente en la bd 
				BEGIN
					INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
													  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
													 (@pidAsignatura,@pidSeccion,@phoraInicial, @CalculoHoraFinal,@pidDias,@pidCodigoAula,@pidCodigoEdificio,@pobservaciones,@pcuposDisponibles,
													  @pidTipoSeccion,@pidDocente,@pfechaInicioCargo,@pidPeriodo,@pfechaInicioPeriodo,@pidTipoPeriodo);
					PRINT 'Seccion agregada correctamente.';
				END
			ELSE 
				PRINT 'Verifique los datos ingresados. No se puedo crear la seccion. '
		END 

	ELSE
			BEGIN 
				PRINT 'La seccion ya existe.'
			END 
END TRY 


BEGIN CATCH 
	PRINT 'Error. No se pudo registrar la seccion. Revise los campos que se ingresaron.';
END CATCH 

GO

/*
SELECT * from ProyectoSistemaMatricula.unah.Asignatura
SELECT * from ProyectoSistemaMatricula.unah.Seccion

INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('MM401','1100',1100,1200,005,'101','F1','Clase presencial',65,
												001,008,'2015-02-05','I','2020-01-01',002);


EXEC [unah].[spCreadorDeNuevaSeccion] 'FS100','1001',1000,004,'101','C1','Clase presencial',35,
												001,008,'2013-01-01','I','2020-01-01',001

EXEC [unah].[spCreadorDeNuevaSeccion] 'FF101','1001',1000,004,'101','H1','Clase presencial',35,
												001,008,'2013-01-01','I','2020-01-01',001
												
EXEC [unah].[spCreadorDeNuevaSeccion] 'EN011','1001',1000,009,'101','H1','Clase presencial',35,
												001,008,'2013-01-01','I','2020-01-01',002

SELECT * from ProyectoSistemaMatricula.unah.Asignatura
SELECT * from ProyectoSistemaMatricula.unah.Seccion
SELECT * from ProyectoSistemaMatricula.unah.TipoSeccion
SELECT * from ProyectoSistemaMatricula.unah.Docente

*/