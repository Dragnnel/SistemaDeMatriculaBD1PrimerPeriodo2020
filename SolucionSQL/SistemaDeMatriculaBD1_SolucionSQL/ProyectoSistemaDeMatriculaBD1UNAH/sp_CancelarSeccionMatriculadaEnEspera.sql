SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 18/05/2020 
-- Description:	Cancela (Elimina) una seccion en lista de espera que el estudiante acaba 
--			    de matricular o matriculo
-- =============================================
CREATE PROCEDURE [unah].[spCancelarSeccionMatriculadaEnEspera](
		@idMatricula INT,
		@idAsignatura VARCHAR(15),
		@idSeccion VARCHAR(15)
	)
AS
BEGIN
	SET NOCOUNT ON;

    IF EXISTS(SELECT * 
				  FROM ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera SME
				  WHERE SME.idMatricula = @idMatricula
				    AND SME.idAsignatura = @idAsignatura
					AND SME.idSeccion = @idSeccion
			  )
		BEGIN
			DELETE ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera
				WHERE idMatricula = @idMatricula
				  AND idAsignatura = @idAsignatura
				  AND idSeccion = @idSeccion

			PRINT 'Asignatura de lista de espera cancelada con exito'
		END
	ELSE
		BEGIN
			PRINT 'Asignatura no se encuentra matriculada en lista de espera'
		END


END
GO


/*
SELECT * 
	FROM ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera
*/