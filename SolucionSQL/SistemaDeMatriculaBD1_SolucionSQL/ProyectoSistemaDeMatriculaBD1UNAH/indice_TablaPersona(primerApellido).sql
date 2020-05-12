 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 03/05/2020 
-- Description:	Este indice lo que hace es ordenar los datos de la tabla persona en el campo primer apellido
-- =============================================




CREATE NONCLUSTERED INDEX IDX_Persona
ON ProyectoSistemaMatricula.unah.Persona (primerApellido)


/*
SELECT *
FROM ProyectoSistemaMatricula.unah.Persona
*/



