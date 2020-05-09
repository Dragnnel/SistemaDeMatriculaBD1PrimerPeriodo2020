/*
INSERT INTO  ManejoDeSeccion.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 ('BI043','1100',1100,1200,005,'101','H1','Clase presencial',65,
												001,008,'2015-02-05','I','2020-01-01',002);

select * from  ManejoDeSeccion.unah.Seccion




EXEC [unah].[SP_CreacionSeccionClasePresencial] 'BI043','1100',1100,1200,005,'101','H1','Clase presencial',65,
												001,008,'2015-02-05','I','2020-01-01',002

EXEC [unah].[SP_CreacionSeccionClasePresencial] 'BI043','1400',1400,1500,005,'101','G1','Clase presencial',25,
												001,008,'2015-02-05','I','2020-01-01',002

*/

-- =============================================
-- Author:		Luis Estrada
-- Create date: 26/04/2020
-- Description:	Creacion de seccion presenciales ya sea clases y laboratorios
-- =============================================

CREATE PROCEDURE [unah].[SP_CreacionSeccionClasePresencial](
															 @pidAsignatura  VARCHAR(5),
															 @pidSeccion VARCHAR(4),
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
															 @pidPeriodo VARCHAR(3),
															 @pfechaInicioPeriodo DATE,
															 @pidTipoPeriodo INT
													  )		
AS
BEGIN TRY 
	IF NOT EXISTS (
					SELECT * FROM  ManejoDeSeccion.unah.Seccion AS T1
							WHERE 
								T1.idAsignatura = @pidAsignatura AND
								T1.idSeccion = @pidSeccion AND 
								T1.horaInicial = @phoraInicial AND
								T1.idDias = @pidDias AND
								T1.idCodigoAula = @pidCodigoAula AND 
								T1.idCodigoEdificio = @PidCodigoEdificio
					)
		BEGIN 
			 
			INSERT INTO  ManejoDeSeccion.unah.Seccion	(idAsignatura,idSeccion,horaInicial, horaFinal,idDias,idCodigoAula,idCodigoEdificio,observaciones,cuposDisponibles,
											  idTipoSeccion,idDocente,fechaInicioCargo,idPeriodo,fechaInicioPeriodo,idTipoPeriodo) VALUES
											 (@pidAsignatura,@pidSeccion,@phoraInicial, @phoraFinal,@pidDias,@pidCodigoAula,@pidCodigoEdificio,@pobservaciones,@pcuposDisponibles,
											  @pidTipoSeccion,@pidDocente,@pfechaInicioCargo,@pidPeriodo,@pfechaInicioPeriodo,@pidTipoPeriodo);
				
			PRINT 'Seccion agregada correctamente';
		END 
	ELSE
		BEGIN 
			PRINT 'La seccion ya existe.'
			RETURN
		END 
 
	END TRY 


	BEGIN CATCH 
		PRINT 'No se pudo registrar la seccion';
	END CATCH 

GO
