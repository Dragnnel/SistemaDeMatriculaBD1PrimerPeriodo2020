/*
	Funcion para el calculo del indice global
*/
CREATE FUNCTION [unah].[fnObtenerIndiceGlobal](
		@idEstudiante INT,
		@idHistorial INT
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

-------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
/*
	Funcion para el calculo del indice de Periodo
*/
CREATE FUNCTION [unah].[fnObtenerIndicePeriodo](
		@idEstudiante INT,
		@idHistorial INT
	)
RETURNS DECIMAL
AS
BEGIN
	DECLARE @uv INT
	DECLARE @sumanotas FLOAT
	DECLARE @indicePeriodo FLOAT
	DECLARE @idMatricula INT

	/*
		Tomando en cuenta de que los IDMatricula de cada estudiante, en cada periodo se ira incrementando.
		De esta manera estaria obteniendo, el id de el ultimo periodo cursado

		*Tendria que mejorar esta parte ya que en el periodo actual se acumularia pero sin registrar datos de clases
		aprobadas, por lo que deberia utilizar el penultimo registro de las matriculas
	*/
	SET @idMatricula = (
		SELECT TOP(1) M.idMatricula
			 FROM ProyectoSistemaMatricula.unah.Matricula M
			WHERE M.idEstudiante = @idEstudiante
			  AND M.idHistorial = @idHistorial
	     ORDER BY idMatricula DESC
		)

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
				 WHERE M.idMatricula = @idMatricula
				   AND M.idEstudiante = @idEstudiante
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
				 WHERE M.idMatricula = @idMatricula
				   AND M.idEstudiante = @idEstudiante
				   AND M.idHistorial = @idHistorial
		           AND SM.idObservacionNota IN ('APR','NSP','RPB','ABD')
				)

	IF @uv > 0
		BEGIN
			SET @indicePeriodo  = (@sumanotas/@uv)
		END
	ELSE
		BEGIN
			SET @indicePeriodo = 0
		END

	RETURN @indicePeriodo
END
GO