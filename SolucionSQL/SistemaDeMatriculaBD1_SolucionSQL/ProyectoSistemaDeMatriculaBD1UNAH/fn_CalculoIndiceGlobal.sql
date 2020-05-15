-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 03/05/2020 
-- Description: Funcion que calcula el indice global
-- =============================================

CREATE FUNCTION [unah].[fnObtenerIndiceGlobal](
		@idEstudiante VARCHAR(11),
		@idHistorial VARCHAR(11)
	)
RETURNS DECIMAL
AS
BEGIN
	DECLARE @uv INT
	DECLARE @sumanotas FLOAT
	DECLARE @indiceGlobal FLOAT

	SET @uv = (
		SELECT SUM(A.unidadesValorativas) AS UV
				  FROM ProyectoSistemaMatricula.unah.Matricula M
			INNER JOIN ProyectoSistemaMatricula.unah.SeccionMatricula SM
					ON SM.idMatricula = M.idMatricula
			INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
					ON (S.idSeccion = SM.idSeccion AND S.idAsignatura = SM.idAsignatura)
			INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
					ON A.idAsignatura = S.idAsignatura
			INNER JOIN ProyectoSistemaMatricula.unah.Periodo P
					ON S.idPeriodo = P.idPeriodo
				 WHERE M.idEstudiante = @idEstudiante
				   AND M.idHistorial = @idHistorial
		           AND SM.idObservacionNota IN ('APR','NSP','RPB','ABD')
				)

	SET @sumanotas = (
		SELECT SUM((A.unidadesValorativas * SM.notaFinal)) AS CALCULO
				  FROM ProyectoSistemaMatricula.unah.Matricula M
			INNER JOIN ProyectoSistemaMatricula.unah.SeccionMatricula SM
					ON SM.idMatricula = M.idMatricula
			INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
					ON (S.idSeccion = SM.idSeccion AND S.idAsignatura = SM.idAsignatura)
			INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
					ON A.idAsignatura = S.idAsignatura
			INNER JOIN ProyectoSistemaMatricula.unah.Periodo P
					ON S.idPeriodo = P.idPeriodo
				 WHERE M.idEstudiante = @idEstudiante
				   AND M.idHistorial = @idHistorial
		           AND SM.idObservacionNota IN ('APR','NSP','RPB','ABD')
				)
	IF @uv > 0
		BEGIN
			SET @indiceGlobal = (@sumanotas/@uv)
		END
	ELSE
		BEGIN
			SET @indiceGlobal = 0
		END

	RETURN @indiceGlobal
END
GO




