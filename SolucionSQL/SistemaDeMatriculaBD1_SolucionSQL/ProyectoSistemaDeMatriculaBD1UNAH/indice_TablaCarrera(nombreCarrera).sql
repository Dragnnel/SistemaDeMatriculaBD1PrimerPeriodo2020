 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/05/2020 
-- Description:	El indice lo que hace es ordenar en la tabla Carrera el campo nombreCarrera
-- =============================================





CREATE NONCLUSTERED INDEX IDX_Carrera
ON ProyectoSistemaMatricula.unah.Carrera (nombreCarrera)


/*
SELECT *
FROM ProyectoSistemaMatricula.unah.Carrera
*/