-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 08/05/2020
-- Description:	Cambiar el docente de una seccion creada 
-- =============================================
CREATE PROCEDURE [unah].[spCambiarDocenteEnUnaSeccionCreada] (
															 @pidAsignatura  VARCHAR(15),
															 @pidSeccion VARCHAR(15),
															 @pidDocente INT,
															 @pfechaInicioCargo DATE,
															 @pidPeriodo CHAR(3),
															 @pfechaInicioPeriodo DATE,
															 @pidTipoPeriodo INT
														)
AS 

BEGIN
SET NOCOUNT ON;

	IF  EXISTS (SELECT * FROM  ProyectoSistemaMatricula.unah.Seccion AS T1
					WHERE T1.idAsignatura = @pidAsignatura AND T1.idSeccion = @pidSeccion ) --Verifica si la seccion,existe
		AND    (SELECT [unah].[fnVerificaEmpleado] (@pidDocente,@pfechaInicioCargo))=1 -- verifica si el docente existe
		AND		(SELECT [unah].[fnVerificaPeriodoAcademico] (@pidPeriodo,@pfechaInicioPeriodo,@pidTipoPeriodo) )=1 --verifica si existe el periodo en la BD 

		BEGIN
			UPDATE ProyectoSistemaMatricula.unah.Seccion
					SET idDocente = @pidDocente, fechaInicioCargo = @pfechaInicioCargo
					WHERE idAsignatura = @pidAsignatura AND idSeccion = @pidSeccion
					AND	idPeriodo=	@pidPeriodo AND fechaInicioPeriodo=@pfechaInicioPeriodo AND idTipoPeriodo=@pidTipoPeriodo

			PRINT 'Se efecturo la modificacion , correctamente. '
		END
	ELSE
			PRINT 'No se pudo registrar el cambio. Puede que no existe la seccion ,docente o el periodo, verifique los datos que ingreso.'

END 


/*
SELECT * FROM ProyectoSistemaMatricula.unah.Docente
SELECT * FROM ProyectoSistemaMatricula.unah.Seccion

SELECT * FROM ProyectoSistemaMatricula.unah.Seccion AS S
WHERE S.idAsignatura = 'EN011' AND S.idSeccion ='0800'
AND	idPeriodo='I' AND fechaInicioPeriodo='2020-01-01' AND idTipoPeriodo=2

EXECUTE [unah].[spCambiarDocenteEnUnaSeccionCreada] 'FS200','0900',001,'2019-01-01','I','2020-01-01',001

EXECUTE [unah].[spCambiarDocenteEnUnaSeccionCreada] 'EN011','0800',011,'2013-01-01','I','2020-01-01',001
*/



