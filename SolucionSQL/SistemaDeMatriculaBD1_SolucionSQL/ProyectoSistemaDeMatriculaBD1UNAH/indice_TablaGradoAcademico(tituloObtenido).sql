-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 26/04/2020
-- Description:	Me ordena en la tabla Grado academico en el campo tituloObtenido
-- =============================================


CREATE NONCLUSTERED INDEX IDX_GradoAcademico
ON ProyectoSistemaMatricula.unah.GradoAcademico (tituloObtenido)

/*SELECT *
FROM ProyectoSistemaMatricula.unah.GradoAcademico



*/
