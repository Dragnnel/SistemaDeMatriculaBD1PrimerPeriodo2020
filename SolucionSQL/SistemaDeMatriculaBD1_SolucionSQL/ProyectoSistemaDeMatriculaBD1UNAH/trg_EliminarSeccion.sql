-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/04/2020 
-- Description:	
-- =============================================

CREATE TRIGGER [unah].[tgEliminarSeccion] ON ProyectoSistemaMatricula.unah.Seccion
FOR DELETE

AS
BEGIN
SET NOCOUNT ON;
INSERT INTO ProyectoSistemaMatricula.unah.log_SeccionEliminada (idSeccionLog,idAsignatura,observacion,fecha)
SELECT idSeccion,idAsignatura,'Seccion eliminada',GETDATE() 
FROM deleted

END

GO


/*
SELECT * from ProyectoSistemaMatricula.unah.Seccion
SELECT * FROM ProyectoSistemaMatricula.unah.log_SeccionEliminada
EXEC [unah].[trans_sp_EliminarSeccion] 'MM401','1201' 
*/

