SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE SPISeccionMatricula(
	@idMatricula INT,
	@idSeccion INT,
	@idAsignatura INT,
	@Observacion VARCHAR(50)
)
AS
BEGIN
SET NOCOUNT ON;

IF NOT EXISTS(SELECT *
				 FROM SistemaMatricula.dbo.SeccionMatricula SM
				 WHERE (SM.idMatrucula = @idMatricula
						AND SM.idSeccion = @idSeccion)
				    OR (SM.idMatrucula = @idMatricula
						AND SM.idAsignatura = @idAsignatura)
				)
	BEGIN
		INSERT INTO SistemaMatricula.dbo.SeccionMatricula(idMatrucula,
														  idSeccion,
														  idAsignatura,
														  observacion)
												   VALUES(@idMatricula,
														  @idSeccion,
														  @idAsignatura,
														  @Observacion)
	END
ELSE
	BEGIN
		SELECT 0 AS RESULTADO
		PRINT 'Observaciones: Ya tiene la seccion y/o Asignatura matriculada en ese horario'
	END
END
GO
