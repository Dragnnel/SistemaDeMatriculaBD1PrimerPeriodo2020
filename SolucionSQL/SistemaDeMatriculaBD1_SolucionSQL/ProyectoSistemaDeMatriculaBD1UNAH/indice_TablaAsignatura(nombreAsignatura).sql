 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 03/05/2020 
-- Description:	El indice lo que hace es ordenar en la tabla Asignatura el campo nombreAsignatura
-- =============================================


CREATE NONCLUSTERED INDEX IDX_nombreAsignatura
ON unah.Asignatura (nombreAsignatura)

/*SELECT *
FROM ProyectoSistemaMatricula.unah.Asignatura
*/