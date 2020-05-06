USE [ManejoDeSeccion]
GO
/****** Object:  StoredProcedure [dbo].[SP_AumentarCupo]    Script Date: 06/05/2020 13:48:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Luis Estrada
-- Create date: 26/04/2020
-- Description:	Aumentar cupo a seccion establecida 
-- =============================================
ALTER PROCEDURE [dbo].[SP_AumentarCupo](
		@pidSeccion INT,
		@pidAsignatura  VARCHAR(15),
		@phoraInicial   INT,
		@pidCodigoAula  VARCHAR(15),
		@pidCodigoEdificio  VARCHAR(15),
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

	/*SELECT * FROM  ManejoDeSeccion.unah.Seccion
		select  T2.cantidadMaximaDeEstudiante FROM ManejoDeSeccion.unah.Aula AS T2
								WHERE 	T2.idCodigoAula =	'A101' AND T2.idCodigoEdificio = 'C2'
	 
	

	--PRINT 'Cantidad maxima que el aula soporta' + @pCantidaMaxima ;
	--PRINT @pCantidaMaxima ;
	*/
END
GO