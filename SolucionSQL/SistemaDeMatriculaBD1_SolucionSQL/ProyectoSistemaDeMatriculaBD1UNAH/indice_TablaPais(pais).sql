 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 03/05/2020 
-- Description:	El indice lo que hace es ordenar en la tabla Pais el campo pais
-- =============================================


CREATE NONCLUSTERED INDEX IDX_Pais
ON ProyectoSistemaMatricula.unah.pais (pais)

/*SELECT *
FROM ProyectoSistemaMatricula.unah.Pais
*/
