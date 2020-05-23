-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 20/05/2020 
-- Description: Este seria el codigo a ejecutar mediante un JOB.
--				La idea es que al momento en que el periodo de matricula (una semana) finalice,
--				en esa fecha automaticamente mediante el JOB se vacie o eliminen todos los registros
--				de la tabla SeccionMatriculaEnEspera
-- =============================================

DECLARE @fechaLimite DATE
DECLARE @fechaActual DATE

/*
	Aqui obtengo la fecha limite establecida en la lista de espera, dado a que será la misma para todos
	basta con hacer la respectiva agrupacion.

	Y una variable para obtener la fecha actual, esto para comparar ambas fechas, en el caso de que sean iguales
	se procedera a eliminar todos los registros de la tabla SeccionMatriculaEnEspera.
	Fecha actual dado que llegue el dia en que se acabe la matricula.
*/
SET @fechaLimite = (
					SELECT SME.fechaLimite
						FROM ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera SME
						GROUP BY SME.fechaLimite
					)

SET @fechaActual = GETDATE()

BEGIN TRY

	IF @fechaLimite = @fechaActual
		BEGIN
			DELETE ProyectoSistemaMatricula.unah.SeccionMatriculaEnEspera

			PRINT 'Tabla vaciada con exito'
		END
	ELSE
		BEGIN
			PRINT 'No hay fechas coincidentes, por lo que la tabla permanece sin cambios'
		END

END TRY
BEGIN CATCH
	PRINT 'Ocurrió algo inesperado al intentar vaciar la tabla SeccionMatriculadaEnEspera'
END CATCH