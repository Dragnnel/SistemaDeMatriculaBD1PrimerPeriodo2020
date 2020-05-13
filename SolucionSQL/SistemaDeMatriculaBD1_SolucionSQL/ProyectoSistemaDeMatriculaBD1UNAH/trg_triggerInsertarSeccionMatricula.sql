-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/04/2020 
-- Description:	Trigger que controla los cupos de las secciones, y las unidades valorativas disponibles del estudiante
-- =============================================

ALTER TRIGGER [unah].[tgInsertarSeccionMatricula] ON ProyectoSistemaMatricula.unah.SeccionMatricula
AFTER INSERT
AS
DECLARE @idEstudiante INT  
DECLARE @idMatricula INT   
DECLARE @idSeccion VARCHAR(15)
DECLARE @idAsignatura VARCHAR(15)
DECLARE @uvAsignatura INT 
DECLARE @uvEstudiante INT 
DECLARE @cuposDisponibles INT 

SET NOCOUNT ON

SET @idEstudiante = (SELECT M.idEstudiante
						      FROM inserted T1
						INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
							    ON M.idMatricula = T1.idMatricula
					 )

SET @idMatricula = (SELECT M.idMatricula
						      FROM inserted T1
						INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
							    ON M.idMatricula = T1.idMatricula
					)

SET @idSeccion = (SELECT T1.idSeccion
						FROM inserted T1
				  )

SET @idAsignatura = (SELECT T1.idAsignatura
						FROM inserted T1
					)

SET @uvAsignatura = [unah].[fnuvAsignatura](@idSeccion,@idAsignatura)

SET @uvEstudiante = [unah].[fnuvEstudiante](@idMatricula)

SET @cuposDisponibles = [unah].[fncuposSeccion](@idSeccion, @idAsignatura)

IF @uvAsignatura <= @uvEstudiante
	BEGIN
		IF @cuposDisponibles > 0
			BEGIN
				UPDATE ProyectoSistemaMatricula.unah.Estudiante
				   SET UVDisponibles = UVDisponibles - @uvAsignatura
				 WHERE idEstudiante = @idEstudiante

				 UPDATE ProyectoSistemaMatricula.unah.Seccion
					SET cuposDisponibles = cuposDisponibles - 1
				  WHERE idSeccion = @idSeccion
					AND idAsignatura = @idAsignatura

				SELECT 1 AS RESULTADO
				PRINT 'Seccion matriculada con exito'
			END
		ELSE
			BEGIN
				INSERT INTO ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera(idMatricula, 
																				   idSeccion, 
																				   idAsignatura,
																				   fechaLimite)
																			VALUES(@idMatricula,
																				   @idSeccion,
																				   @idAsignatura,
																				   NULL)

				UPDATE ProyectoSistemaMatricula.unah.Estudiante
				   SET UVDisponibles = UVDisponibles - @uvAsignatura
				 WHERE idEstudiante = @idEstudiante

				 DELETE ProyectoSistemaMatricula.unah.SeccionMatricula
				  WHERE idMatricula = @idMatricula
					AND idSeccion = @idSeccion
				    AND idAsignatura = @idAsignatura
				
				PRINT 'Seccion matriculada en lista de espera'
			END
	END
ELSE
	BEGIN
		DELETE ProyectoSistemaMatricula.unah.SeccionMatricula
		 WHERE idMatricula = @idMatricula
		   AND idSeccion = @idSeccion
		   AND idAsignatura = @idAsignatura
		 
		PRINT 'No tiene UV Disponibles'
	END

