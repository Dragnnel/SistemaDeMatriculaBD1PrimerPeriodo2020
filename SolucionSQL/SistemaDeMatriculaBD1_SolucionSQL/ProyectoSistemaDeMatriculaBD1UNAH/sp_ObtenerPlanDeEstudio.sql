
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 18/05/2020 
-- Description:	Obtiene el plan de estudio de cada carrera
-- =============================================
---------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE [unah].[spObtenerPlanDeEstudio] (
		@idCarrera INT
	)
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		DECLARE @idPlanEstudio INT

		SET @idPlanEstudio = (SELECT C.idPlanEstudio
									FROM ProyectoSistemaMatricula.unah.Carrera C
									WHERE C.idCarrera = @idCarrera
							  )

		SELECT PE.idPlanEstudio AS ID,
			   PE.nombre AS PLANESTUDIO,
			   PE.duracionCarrera AS DURACION,
			   PE.totalUV AS UVTOTALES,
			   PE.cantidadClasesCarrera AS CANTIDADCLASES,
			   PE.fechaRevision AS FECHAREVISION
			FROM ProyectoSistemaMatricula.unah.PlanEstudio PE
			WHERE PE.idPlanEstudio = @idPlanEstudio

		SELECT PA.idAsignatura AS CODIGO,
			   A.nombreAsignatura AS ASIGNATURA,
			   A.unidadesValorativas AS UV,
			   R.idRequisito1 AS REQUISITO_1,
			   R.idRequisito2 AS REQUISITO_2
			FROM ProyectoSistemaMatricula.unah.PlanEstudio PE
			INNER JOIN ProyectoSistemaMatricula.unah.PensumAcademico PA
			ON PA.idPlanEstudio = PE.idPlanEstudio
			INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
			ON A.idAsignatura = PA.idAsignatura
			FULL OUTER JOIN ProyectoSistemaMatricula.unah.Requisitos R
			ON (R.idAsignatura = PA.idAsignatura AND R.idPlanEstudio = PA.idPlanEstudio)
			WHERE PE.idPlanEstudio = @idPlanEstudio
			

	END TRY
	BEGIN CATCH
		PRINT 'Verifique que el ID de la carrera esta bien escrito'
	END CATCH

END
Go

/*
	PRUEBA
*/
--EXECUTE [unah].[spObtenerPlanDeEstudio] 1
--EXECUTE [unah].[spObtenerPlanDeEstudio] 2
--EXECUTE [unah].[spObtenerPlanDeEstudio] 10