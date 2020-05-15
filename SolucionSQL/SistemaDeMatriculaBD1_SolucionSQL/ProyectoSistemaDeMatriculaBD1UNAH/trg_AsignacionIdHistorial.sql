-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 12/04/2020  
-- Description:	Trigger que asigna el idHistorial conforme a cada estudiante
-- =============================================


CREATE TRIGGER [unah].[tgAsignacionIdHistorial] ON ProyectoSistemaMatricula.unah.Estudiante
AFTER INSERT
AS
	BEGIN TRY
		DECLARE @idHistorial VARCHAR(11)
		DECLARE @idEstudiante VARCHAR(11)
		DECLARE @indicePeriodo FLOAT
		DECLARE @indiceGlobal FLOAT

		SET @idHistorial = (SELECT T1.idEstudiante
								FROM ProyectoSistemaMatricula.unah.Estudiante E
								INNER JOIN inserted T1
								ON T1.idEstudiante = E.idEstudiante
							)

		SET @idEstudiante = (SELECT T1.idEstudiante
								FROM ProyectoSistemaMatricula.unah.Estudiante E
								INNER JOIN inserted T1
								ON T1.idEstudiante = E.idEstudiante
							)

		SET @indicePeriodo = 0

		SET @indiceGlobal = 0

		INSERT INTO ProyectoSistemaMatricula.unah.HistorialAcademico(idHistorial,
																	 indicePeriodo,
																	 indiceGlobal,
																	 idEstudiante
																	 )
															  VALUES(@idHistorial,
																	 @indicePeriodo,
																	 @indiceGlobal,
																	 @idEstudiante
																	 )

		PRINT 'Historial insertado correctamente'
	END TRY
	BEGIN CATCH
		PRINT 'Error al insertar registro en el historial'
	END CATCH
GO

/*
	PRUEBA
*/
/*
SELECT * 
	FROM ProyectoSistemaMatricula.unah.HistorialAcademico

SELECT * 
	FROM ProyectoSistemaMatricula.unah.Estudiante
*/
/*
INSERT INTO ProyectoSistemaMatricula.unah.Estudiante(idEstudiante,
													 esRepresentanteArteoDeporte,
													 uvDisponibles,
													 contrasenia,
													 idCentro,
													 idNotaAptitud,
													 idPersona,
													 cursoCursoModalidaDeClasesVirtuales,
													 cursoCursoIntroduccionVidaUniversitaria,
													 idCarrera,
													 poseeCarreraSimultanea
													 )
											  VALUES('160981426',
													 0,
													 15,
													 'PH',
													 1,
													 8,
													 '8',
													 1,
													 0,
													 8,
													 NULL
													 )
*/