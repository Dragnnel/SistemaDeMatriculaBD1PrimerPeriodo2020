-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/04/2020 
-- Description:	Trigeer que impide actualizar unos campos,solo permite pasarlo si se cambiaron los que se dejaron para cambiarlo, sino regresa el registro anterior.
-- =============================================

ALTER TRIGGER [unah].[tgModificarSeccion] ON ProyectoSistemaMatricula.unah.Seccion
FOR UPDATE

AS
BEGIN
SET NOCOUNT ON;
	IF ( UPDATE(idCodigoAula) OR UPDATE(idCodigoEdificio) OR UPDATE(idDocente) OR UPDATE(fechaInicioCargo)) AND
		 NOT ( UPDATE(idSeccion)  OR UPDATE(idAsignatura) OR UPDATE(idPeriodo) OR UPDATE(fechaInicioPeriodo) OR UPDATE(idTipoPeriodo))
		   BEGIN 
		/*	SELECT 
			(D.idCodigoAula+'-'+ D.idCodigoEdificio+'-'+D.idDocente +'-'+D.fechaInicioCargo) as 'Registro anterior',
			/*(I.idCodigoAula+'-'+ I.idCodigoEdificio+'-'+I.idDocente +'-'+I.fechaInicioCargo) as 'Registro actualizado'*/
			 FROM DELETED as D
			/* INNER JOIN INSERTED as I
			 on D.idSeccion=I.idSeccion*/*/

			 PRINT 'Actualizada correctamente'
		   END
	ELSE
	   BEGIN
		raiserror('Error no se puede modificar esos campos', 10, 1)
		rollback transaction
	   END;

END

GO


/*
SELECT * from ProyectoSistemaMatricula.unah.Seccion
SELECT * FROM ProyectoSistemaMatricula.unah.log_SeccionModificada 
EXEC [unah].[trans_sp_EliminarSeccion] 'MM401','1201' 


*/