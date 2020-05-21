-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/04/2020 
-- Description:	Trigger que controla los cupos de las secciones, y las unidades valorativas disponibles del estudiante
--				Segun las asignaturas en la lista de espera
-- =============================================

CREATE TRIGGER [unah].[tgCancelarSeccionMatriculaEnEspera] ON ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera
AFTER DELETE
AS
BEGIN TRY
	DECLARE @idEstudiante INT  
	DECLARE @idMatricula INT   
	DECLARE @idSeccion VARCHAR(15)
	DECLARE @idAsignatura VARCHAR(15)
	DECLARE @uvAsignatura INT  

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

			PRINT 'UV aumentado con exito'
		END
	ELSE
		BEGIN
			PRINT 'Ocurrio un error inesperado'
		END
END TRY
BEGIN CATCH
	PRINT 'tgCancelarSeccionMatriculaEnEspera'
END CATCH
GO

-------------------------------------------------------------------------------------------------
/*
*/