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
---------------------------------------------------------------------------------------------------------------
SELECT indiceGlobal
FROM ProyectoSistemaMatricula.unah.HistorialAcademico



CREATE NONCLUSTERED INDEX IDX_IndiceGlobal
ON unah.HistorialAcademico (indiceGlobal)
------------------------------------------------------------------------------------------------------------------
SELECT indicePeriodo
FROM ProyectoSistemaMatricula.unah.HistorialAcademico



CREATE NONCLUSTERED INDEX IDX_IndicePeriodo
ON unah.HistorialAcademico (indicePeriodo)
--------------------------------------------------------------------------------------------------------
SELECT fechaInicioEmpleado
FROM ProyectoSistemaMatricula.unah.Empleado



CREATE NONCLUSTERED INDEX IDX_fechaInicioEmpleado
ON unah.Empleado (fechaInicioEmpleado)