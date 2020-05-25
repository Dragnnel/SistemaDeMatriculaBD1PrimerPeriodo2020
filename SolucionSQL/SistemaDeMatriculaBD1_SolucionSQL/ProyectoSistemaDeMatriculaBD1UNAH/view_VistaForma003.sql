-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020 
-- Description:	Vista que me gerera la forma 003, al momento de querer el historial solo tendria que hacer el where
 --con el idEstudiante
-- =============================================
 CREATE VIEW [unah].[vwVistaForma003] AS(

 SELECT E.idEstudiante,
       P.primerNombre,
       P.segundoNombre,
	   P.primerApellido,
	   P.segundoApellido,
	   C.nombreCarrera,
	   CU.centroUniversitario,
	   PE.anio,
	   A.idAsignatura,
	   A.nombreAsignatura,
	   SE.horaInicial,
	   SE.horaFinal,
	   DIA.descripcionDias,
	   EDI.idCodigoEdificio,
	   AULA.idCodigoAula,
	   A.unidadesValorativas,
	   SE.observaciones,
	   PE.idPeriodo
FROM ProyectoSistemaMatricula.unah.persona P
INNER JOIN ProyectoSistemaMatricula.unah.Estudiante E
ON p.idPersona = E.idPersona
INNER JOIN ProyectoSistemaMatricula.unah.Carrera C
ON E.idCarrera = C.idCarrera
INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico H
ON E.idEstudiante = H.idEstudiante
INNER JOIN ProyectoSistemaMatricula.unah.CentroUniversitario CU
ON E.idCentro = CU.idCentro
INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
ON E.idEstudiante = M.idEstudiante
INNER JOIN ProyectoSistemaMatricula.unah.Periodo PE
ON M.idPeriodo = PE.idPeriodo
INNER JOIN ProyectoSistemaMatricula.unah.Seccion SE
ON PE.idPeriodo = SE.idPeriodo
INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
ON SE.idTipoPeriodo = A.idTipoPeriodo
INNER JOIN ProyectoSistemaMatricula.unah.Dias DIA
ON SE.idDias = DIA.idDias
INNER JOIN ProyectoSistemaMatricula.unah.Edificio EDI
ON SE.idCodigoEdificio =EDI.idCodigoEdificio
INNER JOIN ProyectoSistemaMatricula.unah.Aula AULA
ON SE.idCodigoAula=AULA.idCodigoAula
)

/*
SELECT *
FROM [unah].[vwVistaForma003]
*/
