CREATE TRIGGER [unah].[tgr_EliminarSeccion] ON ProyectoSistemaMatricula.unah.Seccion
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

