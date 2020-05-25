 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 03/05/2020 
-- Description:	 Todos los indices 
-- =============================================



use ProyectoSistemaMatricula

SELECT primerApellido
FROM ProyectoSistemaMatricula.unah.Persona

EXECUTE sp_helpindex 'unah.'




CREATE NONCLUSTERED INDEX IDX_Persona
ON unah.Persona (primerApellido)


---------------------------------------------------------------------------------------------
SELECT nombreCarrera
FROM ProyectoSistemaMatricula.unah.Carrera



CREATE NONCLUSTERED INDEX IDX_Carrera
ON unah.Carrera (nombreCarrera)

----------------------------------------------------------------------------------------------------
SELECT cuposDisponibles
FROM ProyectoSistemaMatricula.unah.Seccion



CREATE NONCLUSTERED INDEX IDX_Seccion
ON unah.Seccion (cuposDisponibles)
----------------------------------------------------------------------------------------------------------
SELECT departamento
FROM ProyectoSistemaMatricula.unah.Departamento



CREATE NONCLUSTERED INDEX IDXDepartamento
ON unah.Departamento (departamento)
------------------------------------------------------------------------------------------------------------
SELECT municipio
FROM ProyectoSistemaMatricula.unah.Municipio



CREATE NONCLUSTERED INDEX IDX_Municipio
ON unah.Municipio (municipio)

------------------------------------------------------------------------------------------------------------------

SELECT fechaInicioEmpleado
FROM ProyectoSistemaMatricula.unah.Empleado



CREATE NONCLUSTERED INDEX IDX_fechaInicioEmpleado
ON unah.Empleado (fechaInicioEmpleado)

---------------------------------------------------------------------------------------------------------------
CREATE NONCLUSTERED INDEX IDX_nombreAsignatura
ON unah.Asignatura (nombreAsignatura)

SELECT *
FROM ProyectoSistemaMatricula.unah.Asignatura
---------------------------------------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX IDX_GradoAcademico
ON unah.GradoAcademico (tituloObtenido)

SELECT *
FROM ProyectoSistemaMatricula.unah.GradoAcademico
-------------------------------------------------------------------------------------------------

CREATE NONCLUSTERED INDEX IDX_Pais
ON ProyectoSistemaMatricula.unah.pais (pais)

SELECT *
FROM ProyectoSistemaMatricula.unah.Pais
