-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/04/2020 
-- Description: Funcion para obtener la cantidad de cupos disponibles en una determinada sección
-- =============================================

CREATE FUNCTION [unah].[fncuposSeccion](
		@idSeccion VARCHAR(15),
		@idAsignatura VARCHAR(15)
	)
RETURNS INT
AS
BEGIN
	DECLARE @cuposDisponibles INT

	SET @cuposDisponibles = (SELECT S.cuposDisponibles
								 FROM ProyectoSistemaMatricula.unah.Seccion S
								WHERE S.idSeccion = @idSeccion
								  AND S.idAsignatura = @idAsignatura
							 )
	
	RETURN @cuposDisponibles
END
GO