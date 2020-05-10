/*
SELECT * FROM ManejoDeSeccion.unah.Aula
SELECT * FROM ManejoDeSeccion.unah.Seccion

SELECT * FROM  ManejoDeSeccion.unah.Seccion
		select  T2.cantidadMaximaDeEstudiante FROM ManejoDeSeccion.unah.Aula AS T2
								WHERE 	T2.idCodigoAula =	'101' AND T2.idCodigoEdificio = 'B2'

EXEC SP_AumentarCupo 0800,'FS100',0700,'A101','B2',8

UPDATE ManejoDeSeccion.unah.Seccion
						SET cuposDisponibles = 25
							WHERE idAsignatura = 'FS100' AND horaInicial =0700 
							AND 	idCodigoAula =	'101' AND idCodigoEdificio = 'B2'
*/

-- =============================================
-- Author:		Luis Estrada
-- Create date: 26/04/2020
-- Description:	Aumentar cupo a seccion establecida 
-- =============================================
CREATE PROCEDURE [unah].[SP_AumentarCupo](
		@pidSeccion INT,
		@pidAsignatura  VARCHAR(15),
		@phoraInicial   INT,
		@pidCodigoAula  VARCHAR(25),
		@pidCodigoEdificio  VARCHAR(25),
		@pCantidadParaAumentar INT 
		)		
AS
BEGIN
	 DECLARE 	@pCantidadAula VARCHAR (3);
	 DECLARE 	@pCantidadMaxima VARCHAR (3);
	 DECLARE    @pAumento INT;

	 SELECT @pCantidadAula  =  T1.cuposDisponibles FROM ManejoDeSeccion.unah.Seccion AS T1
								WHERE T1.idAsignatura = @pidAsignatura AND T1.horaInicial =@phoraInicial AND 	
								T1.idCodigoAula =	@pidCodigoAula AND T1.idCodigoEdificio = @pidCodigoEdificio;

	SELECT @pCantidadMaxima  =  T2.cantidadMaximaDeEstudiante FROM ManejoDeSeccion.unah.Aula AS T2
								WHERE 	T2.idCodigoAula =	@pidCodigoAula AND T2.idCodigoEdificio = @pidCodigoEdificio;


	SET @pAumento = CAST(@pCantidadMaxima AS INT) - CAST(@pCantidadAula AS INT);

	BEGIN TRY 
	IF @pCantidadParaAumentar < = @pAumento
		BEGIN	
				 UPDATE ManejoDeSeccion.unah.Seccion
						SET cuposDisponibles = cuposDisponibles + @pCantidadParaAumentar
							WHERE idAsignatura = @pidAsignatura AND horaInicial =@phoraInicial 
							AND 	idCodigoAula =	@pidCodigoAula AND idCodigoEdificio = @pidCodigoEdificio
		END
	ELSE 
		BEGIN 
			PRINT 'No se pudo aumentar los cupos de la seccion.
			       El valor ingresado es superior a la capacidad maxima de alumnos que soporta el aula.'

		END 
	END TRY 

	BEGIN CATCH 
		PRINT 'ERROR,no se pudiron ampliar los cupos'
	END CATCH 
END
GO

