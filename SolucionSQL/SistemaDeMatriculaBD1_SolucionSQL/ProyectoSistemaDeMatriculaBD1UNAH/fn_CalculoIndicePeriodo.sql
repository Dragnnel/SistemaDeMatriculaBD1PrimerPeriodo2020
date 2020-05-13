-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 03/05/2020 
-- Description: Funcion que calcula el indice de periodo (el ultimo en el que se ha cursado)
-- =============================================

CREATE FUNCTION [unah].[fnObtenerIndicePeriodo](
		@idEstudiante INT,
		@idHistorial INT,
		@EstudiandoActualmente INT
	)
RETURNS DECIMAL
AS
BEGIN
	DECLARE @uv INT
	DECLARE @sumanotas FLOAT
	DECLARE @indicePeriodo FLOAT
	DECLARE @idMatricula INT

	/*
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
	/*
		Aqui conseguiria la penultima idMatricula para poder generar el indice del periodo anterior y asi
		poder matricular conforme a eso, esta forma funciona si el estudiante esta cursando un periodo actualmente,
		como se registra una nueva idMatricula, se requiere el penultimo. 
		De ser que no entro a un nuevo periodo, entonces se requiere obtener el ultimo idMatricula, como se muestra en 
		la conaulta de arriba
	*/
	SET @idMatricula = (
		SELECT TOP(1) M.idMatricula
			 FROM ProyectoSistemaMatricula.unah.Matricula M
			WHERE M.idEstudiante = @idEstudiante
			  AND M.idHistorial = @idHistorial
			  AND M.idMatricula < (SELECT max(M2.idMatricula) FROM ProyectoSistemaMatricula.unah.Matricula M2)
	     ORDER BY idMatricula DESC
		)
	*/

	IF @EstudiandoActualmente = 1
		BEGIN
			SET @idMatricula = (
								SELECT TOP(1) M.idMatricula
										FROM ProyectoSistemaMatricula.unah.Matricula M
									   WHERE M.idEstudiante = @idEstudiante
										 AND M.idHistorial = @idHistorial
										 AND M.idMatricula < (SELECT max(M2.idMatricula) FROM ProyectoSistemaMatricula.unah.Matricula M2)
									ORDER BY idMatricula DESC
								)
		END
	ELSE
		BEGIN
			IF @EstudiandoActualmente = 0
				BEGIN
					SET @idMatricula = (
										SELECT TOP(1) M.idMatricula
											 FROM ProyectoSistemaMatricula.unah.Matricula M
											WHERE M.idEstudiante = @idEstudiante
											  AND M.idHistorial = @idHistorial
										 ORDER BY idMatricula DESC
										)
				END
			ELSE
				BEGIN
					SET @idMatricula = 0
				END
		END

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

/*
Una forma de conseguir el penultimo valor

SELECT TOP(1) D.idDias
	FROM ProyectoSistemaMatricula.unah.Dias D
	WHERE D.idDias < (SELECT max(idDias) FROM ProyectoSistemaMatricula.unah.Dias)
	ORDER BY idDias DESC
*/

