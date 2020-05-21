SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 18/05/2020 
-- Description:	Cancela (Elimina) una seccion que el estudiante acaba de matricular o matriculo
-- =============================================

CREATE PROCEDURE [unah].[spCancelarSeccionMatriculada](
		@idMatricula INT,
		@idAsignatura VARCHAR(15),
		@idSeccion VARCHAR(15)
	)
AS
BEGIN
	SET NOCOUNT ON;

    IF EXISTS(SELECT * 
				  FROM ProyectoSistemaMatricula.unah.SeccionMatricula SM
				  WHERE SM.idMatricula = @idMatricula
				    AND SM.idAsignatura = @idAsignatura
					AND SM.idSeccion = @idSeccion
			  )
		BEGIN
			DELETE ProyectoSistemaMatricula.unah.SeccionMatricula
				WHERE idMatricula = @idMatricula
				  AND idAsignatura = @idAsignatura
				  AND idSeccion = @idSeccion

			PRINT 'Asignatura cancelada con exito'
		END
	ELSE
		BEGIN
			PRINT 'Asignatura no se encuentra matriculada'
		END


END
GO


/*
SELECT * 
	FROM ProyectoSistemaMatricula.unah.SeccionMatricula
SELECT * 
	FROM ProyectoSistemaMatricula.unah.Asignatura
*/