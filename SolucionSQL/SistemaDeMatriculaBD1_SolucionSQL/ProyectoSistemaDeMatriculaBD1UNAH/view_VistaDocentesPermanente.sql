 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/05/2020 
-- Description:	Lista de Empleados que tienen cargo de Docente que estan Contratados Permanente
-- =============================================
 CREATE VIEW [unah].[vwVistaDocentesPermanente] AS(
 SELECT T1.idEmpleado,
		T4.primerNombre,
		T4.segundoNombre,
		T4.primerApellido,
		T4.segundoApellido
 FROM ProyectoSistemaMatricula.unah.Empleado T1
 INNER JOIN ProyectoSistemaMatricula.unah.Cargo T2
 ON T1.idcargo = T2.idCargo
 INNER JOIN ProyectoSistemaMatricula.unah.Contrato T3
 ON T1.idContrato = T3.idContrato
 INNER JOIN ProyectoSistemaMatricula.unah.Persona T4
 ON T1.idPersona = T4.idPersona
 WHERE T3.descripcion= 'Permanente' AND T2.tipoCargo = 'Docente'


)

/*
SELECT *
FROM VistaDocentesPermanente
*/

