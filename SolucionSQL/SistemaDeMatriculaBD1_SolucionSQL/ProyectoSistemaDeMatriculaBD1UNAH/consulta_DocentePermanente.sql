-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Consulta Lista de docentes permanentes de la facultad de ingenieria
-- =============================================

SELECT T1.idEmpleado,
		T4.primerNombre,
		T4.segundoNombre,
		T4.primerApellido,
		T4.segundoApellido,
		T5.nombreCarrera,
		T6.facultad
 FROM ProyectoSistemaMatricula.unah.Empleado T1
 INNER JOIN ProyectoSistemaMatricula.unah.Cargo T2
 ON T1.idcargo = T2.idCargo
 INNER JOIN ProyectoSistemaMatricula.unah.Contrato T3
 ON T1.idContrato = T3.idContrato
 INNER JOIN ProyectoSistemaMatricula.unah.Persona T4
 ON T1.idPersona = T4.idPersona
 INNER JOIN ProyectoSistemaMatricula.unah.Carrera T5
 ON T1.idCarrera= T5.idCarrera
 INNER JOIN ProyectoSistemaMatricula.unah.Facultad T6
 ON T5.idFacultad =T6.idFacultad
 WHERE T3.descripcion= 'Permanente' AND T2.tipoCargo = 'Docente' AND T5.idFacultad = 2

 

