SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO 
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 26/04/2020
-- Description:	Aumentar cupo a seccion establecida
-- =============================================

CREATE PROCEDURE [unah].[spAumentarCupoSeccion](
		@pidSeccion INT,
		@pidAsignatura  VARCHAR(15),
		@phoraInicial   INT,
		@pidCodigoAula  VARCHAR(25),
		@pidCodigoEdificio  VARCHAR(25),
		@pCantidadParaAumentar INT 
		)		
AS
BEGIN
	 SET NOCOUNT ON;

	 DECLARE 	@pCantidadAula VARCHAR (3);
	 DECLARE 	@pCantidadMaxima VARCHAR (3);
	 DECLARE    @pAumento INT;

	 SELECT @pCantidadAula  =  T1.cuposDisponibles FROM ProyectoSistemaMatricula.unah.Seccion AS T1
								WHERE T1.idAsignatura = @pidAsignatura AND T1.horaInicial =@phoraInicial AND 	
								T1.idCodigoAula =	@pidCodigoAula AND T1.idCodigoEdificio = @pidCodigoEdificio;

	SELECT @pCantidadMaxima  =  T2.cantidadMaximaDeEstudiante FROM ProyectoSistemaMatricula.unah.Aula AS T2
								WHERE 	T2.idCodigoAula =	@pidCodigoAula AND T2.idCodigoEdificio = @pidCodigoEdificio;


	SET @pAumento = CAST(@pCantidadMaxima AS INT) - CAST(@pCantidadAula AS INT);

	BEGIN TRY 
		IF @pCantidadParaAumentar < = @pAumento
			BEGIN	
					 UPDATE ProyectoSistemaMatricula.unah.Seccion
							SET cuposDisponibles = cuposDisponibles + @pCantidadParaAumentar
								WHERE idAsignatura = @pidAsignatura AND horaInicial =@phoraInicial 
								AND 	idCodigoAula =	@pidCodigoAula AND idCodigoEdificio = @pidCodigoEdificio
					PRINT 'Aumento de cupo de la seccion fue exitoso.'
			END
		ELSE 
			BEGIN 
				PRINT 'No se pudo aumentar los cupos de la seccion.El valor ingresado es superior a la capacidad maxima de alumnos que soporta el aula.'
			END 
	END TRY 

	BEGIN CATCH 
		PRINT 'ERROR,no se pudiron ampliar los cupos.'
	END CATCH 
END
GO

/*
SELECT * FROM ProyectoSistemaMatricula.unah.Aula
SELECT * FROM ProyectoSistemaMatricula.unah.Seccion


EXEC unah.spAumentarCupoSeccion '0800','EN011',0800,'101','H1',15


SELECT S.idAsignatura, S.cuposDisponibles, A.cantidadMaximaDeEstudiante
 FROM ProyectoSistemaMatricula.unah.Aula AS A
INNER JOIN ProyectoSistemaMatricula.unah.Seccion AS S
ON A.idCodigoAula = S.idCodigoAula AND A.idCodigoEdificio = S.idCodigoEdificio 
WHERE A.idCodigoAula = '101' AND A.idCodigoEdificio = 'F1' AND S.idSeccion='1000'

UPDATE ProyectoSistemaMatricula.unah.Seccion
						SET cuposDisponibles = 25
							WHERE idAsignatura = 'FS100' AND horaInicial =0700 
							AND 	idCodigoAula =	'101' AND idCodigoEdificio = 'B2'
*/