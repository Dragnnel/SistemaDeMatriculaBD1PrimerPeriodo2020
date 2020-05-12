
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 26/04/2020
-- Description:	Me ordena  en la tabla Municipio en el campo municipio
-- =============================================



CREATE NONCLUSTERED INDEX IDX_Municipio
ON ProyectoSistemaMatricula.unah.Municipio (municipio)

/*
SELECT *
FROM ProyectoSistemaMatricula.unah.Municipio
*/