-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/05/2020
-- Description:	Cambio de aula y edificio de una seccion creada, verificando que la nueva aula, pueda contener los cupos que esta definida la seccion de alumnos.
-- =============================================
CREATE PROCEDURE [unah].[spCambiarAulaSeccion](
										@pidAsignatura  VARCHAR(15),
										@pidSeccion VARCHAR(15),
										@pidCodigoAula VARCHAR(25),
										@pidCodigoEdificio VARCHAR (25),
										@pfechaInicioPeriodo DATE,
										@pidTipoPeriodo INT
										)

AS
BEGIN
SET NOCOUNT ON;
	DECLARE @Respuesta INT = 0;
	DECLARE @cupoSeccion INT;

	IF EXISTS (SELECT * FROM  ProyectoSistemaMatricula.unah.Seccion AS T1
							WHERE T1.idAsignatura = @pidAsignatura
							 AND T1.idSeccion = @pidSeccion 
							 AND T1.fechaInicioPeriodo= @pfechaInicioPeriodo 
							 AND T1.idTipoPeriodo = @pidTipoPeriodo)
			BEGIN
				SELECT @cupoSeccion = T1.cuposDisponibles FROM ProyectoSistemaMatricula.unah.Seccion AS T1
							WHERE T1.idAsignatura = @pidAsignatura
							 AND T1.idSeccion = @pidSeccion 
							 AND T1.fechaInicioPeriodo= @pfechaInicioPeriodo 
							 AND T1.idTipoPeriodo = @pidTipoPeriodo;

				IF (SELECT [unah].[fnValidarUbicacionSeccion] (@pidCodigoAula,@pidCodigoEdificio,@cupoSeccion))=1 --Verifica si el aula que va cambiarse cumple con los requisitos donde averquen los cupos de la seccion para los alumnos
					BEGIN
						UPDATE ProyectoSistemaMatricula.unah.Seccion --Actualiza el edificio y el aula
						SET idCodigoAula =@pidCodigoAula , idCodigoEdificio = @pidCodigoEdificio
						WHERE  idAsignatura = @pidAsignatura 
						AND idSeccion = @pidSeccion 
						AND fechaInicioPeriodo= @pfechaInicioPeriodo 
						AND idTipoPeriodo = @pidTipoPeriodo
						SET @Respuesta = 1;	
						PRINT 'Modificacion exitosa,se cambio la ubicacion de la seccion.'
					END
				ELSE
					BEGIN
						SET @Respuesta =0;
						PRINT 'No se pudo realizar el cambio, el aula seleccionada no soporta, los cupos de la seccion definidos.'
					END
			END 
	ELSE
		BEGIN
		  SET @Respuesta = 0;
		  --  'No existe el docente, con ese registro';
			PRINT 'No se encontro registros de la seccion, verifique los datos que ingreso, esten correctos. '
		END 			
			RETURN @respuesta;
END 


/*
	SELECT T1.cuposDisponibles FROM ProyectoSistemaMatricula.unah.Seccion AS T1
							WHERE T1.idAsignatura = 'BI043'
							 AND T1.idSeccion = '1100' 
							-- AND  T1.idPeriodo =@pidPeriodo 
							 AND T1.fechaInicioPeriodo='2020-01-01'
							 AND T1.idTipoPeriodo = 2

SELECT * FROM ProyectoSistemaMatricula.unah.Seccion
SELECT * FROM ProyectoSistemaMatricula.unah.Aula

								       
EXECUTE unah.spCambiarAulaSeccion  @pidAsignatura ,	@pidSeccion ,@pidCodigoAula,@pidCodigoEdificio ,@pfechaInicioPeriodo ,@pidTipoPeriodo

EXECUTE [unah].[spCambiarAulaSeccion] 'FS200','1000','101','G1','2020-01-01','1'

EXECUTE [unah].[spCambiarAulaSeccion] 'FS200','1100','101','C2','2020-01-01','1'

EXECUTE [unah].[spCambiarAulaSeccion] 'BI04311','1100','101','F1','2020-01-01','2'

*/

