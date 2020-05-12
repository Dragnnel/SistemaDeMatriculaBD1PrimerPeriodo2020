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
ALTER PROCEDURE [unah].[SP_CreacionSeccionClasePresencial](
															 @pidAsignatura  VARCHAR(15),
															 @pidSeccion VARCHAR(15),
															 @phoraInicial INT,
															 @phoraFinal INT,
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
	IF NOT EXISTS (SELECT * FROM  ProyectoSistemaMatricula.unah.Seccion AS T1
							WHERE T1.idAsignatura = @pidAsignatura AND T1.idSeccion = @pidSeccion )
		BEGIN 

			 IF (SELECT [unah].[fn_VerificarCreacionHoraSeccion] (@pidSeccion,@phoraInicial,@phoraFinal)) = 1 --Verificar si la hora inicial y final este acorde a la seccion
					AND (SELECT [unah].[fn_ValidarUbicacionSeccion] (@pidCodigoAula,@pidCodigoEdificio,@pcuposDisponibles)) = 1 --Verifica si los datos de ubicacion son correctos y si caben en los cupos del aula 
					AND (SELECT [unah].[fn_VerificaPeriodoAcademico] (@pidPeriodo,@pfechaInicioPeriodo,@pidTipoPeriodo) )=1 --verifica que si se ingreso un periodo correcto 
				BEGIN
					INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
													  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
													 (@pidAsignatura,@pidSeccion,@phoraInicial, @phoraFinal,@pidDias,@pidCodigoAula,@pidCodigoEdificio,@pobservaciones,@pcuposDisponibles,
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

INSERT INTO  ProyectoSistemaMatricula.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('MM401','1100',1100,1200,005,'101','F1','Clase presencial',65,
												001,008,'2015-02-05','I','2020-01-01',002);


EXEC [unah].[SP_CreacionSeccionClasePresencial] 'MM401','1101',1100,1200,004,'101','B1','Clase presencial',35,
												001,008,'2013-01-01','I','2020-01-01',001

SELECT * from ProyectoSistemaMatricula.unah.Asignatura
SELECT * from ProyectoSistemaMatricula.unah.Seccion
SELECT * from ProyectoSistemaMatricula.unah.TipoSeccion
SELECT * from ProyectoSistemaMatricula.unah.Docente

*/