-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 11/05/2020
-- Description:	Verifica si existe el aula y el edificio , y comprueba los cupos que no sobresalgan del maximo del aula ,ni  que le asigne negativos al campo cupos
-- =============================================
CREATE FUNCTION [unah].[fnValidarUbicacionSeccion] (
														@pidCodigoAula VARCHAR(25),
														@pidCodigoEdificio VARCHAR (25),
														@pcuposDisponibles INT
)

RETURNS INT 

AS 
BEGIN 
DECLARE @cuposMaximoDisponible INT;
DECLARE @Respuesta INT = 0;


	IF EXISTS ( SELECT * FROM ProyectoSistemaMatricula.unah.Aula A
						 WHERE A.idCodigoAula = @pidCodigoAula AND A.idCodigoEdificio =@pidCodigoEdificio) -- Si existe el aula dentra al if 
		BEGIN
			SELECT @cuposMaximoDisponible  = A.cantidadMaximaDeEstudiante FROM ProyectoSistemaMatricula.unah.Aula A
												WHERE A.idCodigoAula = @pidCodigoAula AND 
													  A.idCodigoEdificio =@pidCodigoEdificio -- se guarda el dato del cupoMaximo de alumnos que soporta el aula 

				IF (@pcuposDisponibles < = @cuposMaximoDisponible)  AND (@pcuposDisponibles >0) --se comprueba que si los cupos no exceden la capacidad del aula 
					SET @Respuesta =1; -- si todo esta correcto devuelve 1 
				ELSE 
					SET @Respuesta =0; --si no cumple, manda un 0 
		END
	ELSE
		SET @Respuesta =0; 

RETURN @Respuesta

END 


/*
SELECT * FROM ProyectoSistemaMatricula.unah.Aula 

SELECT A.cantidadMaximaDeEstudiante FROM ProyectoSistemaMatricula.unah.Aula A
	WHERE A.idCodigoAula = '101' AND A.idCodigoEdificio ='B2' 

SELECT [unah].[fn_ValidarUbicacionSeccion] ('101','B2',25) as Respuesta
SELECT [unah].[fn_ValidarUbicacionSeccion] ('101','B2',45) as Respuesta
SELECT [unah].[fn_ValidarUbicacionSeccion] ('101','B2',-45) as Respuesta
*/