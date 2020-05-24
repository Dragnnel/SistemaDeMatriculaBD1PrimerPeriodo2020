-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/04/2020 
-- Description:	Trigger que controla los cupos de las secciones, y las unidades valorativas disponibles del estudiante
-- =============================================

CREATE TRIGGER [unah].[tgCancelarSeccionMatricula] ON ProyectoSistemaMatricula.unah.SeccionMatricula
AFTER DELETE
AS
BEGIN TRY
	DECLARE @idEstudiante VARCHAR(11)  
	DECLARE @idMatricula INT   
	DECLARE @idSeccion VARCHAR(15)
	DECLARE @idAsignatura VARCHAR(15)
	DECLARE @uvAsignatura INT 
	--DECLARE @uvEstudiante INT 
	--DECLARE @cuposDisponibles INT 

	SET NOCOUNT ON

	SET @idMatricula = (SELECT M.idMatricula
								  FROM deleted d1
							INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
									ON M.idMatricula = d1.idMatricula
						)

	SET @idEstudiante = (SELECT M.idEstudiante
								  FROM deleted d1
							INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
									ON M.idMatricula = d1.idMatricula
						 )

	SET @idSeccion = (SELECT d1.idSeccion
						FROM deleted d1
					  )

	SET @idAsignatura = (SELECT d1.idAsignatura
							FROM deleted d1
						 )

	SET @uvAsignatura = [unah].[fnuvAsignatura](@idSeccion,@idAsignatura)

	IF @uvAsignatura > 0
		BEGIN
			UPDATE ProyectoSistemaMatricula.unah.Estudiante
			   SET uvDisponibles = uvDisponibles + @uvAsignatura
			 WHERE idEstudiante = @idEstudiante

			UPDATE ProyectoSistemaMatricula.unah.Seccion
			   SET cuposDisponibles = cuposDisponibles + 1
			 WHERE idAsignatura = @idAsignatura
			   AND idSeccion = @idSeccion

			PRINT 'UV y cupos aumentados con exito'
		END
	ELSE
		BEGIN
			PRINT 'Ocurrio un error inesperado'
		END
END TRY
BEGIN CATCH
	PRINT 'tgCancelarSeccionMatricula'
END CATCH
GO

-------------------------------------------------------------------------------------------------
/*
SELECT *
	FROM ProyectoSistemaMatricula.unah.Estudiante

SELECT *
	FROM ProyectoSistemaMatricula.unah.Seccion

*/