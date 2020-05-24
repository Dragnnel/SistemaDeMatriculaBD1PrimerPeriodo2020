-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020 
-- Description:Vista que me genera el historial Academico, al momento de querer el historial solo tendria que hacer el where
 --con el idEstudiante	
-- =============================================
CREATE VIEW [unah].[vwVistaHisorialAcademico] AS(
SELECT CU.centroUniversitario,
       C.nombreCarrera,
       P.primerNombre,
       P.segundoNombre,
	   P.primerApellido,
	   P.segundoApellido,
	   H.indiceGlobal,
	   H.indicePeriodo,
	   A.idAsignatura,
	   A.nombreAsignatura,
	   A.unidadesValorativas,
	   SE.idSeccion,
	   PE.anio,
	   PE.idPeriodo,
	   SEMA.notaFinal,
	   NOTA.descripcion
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
ON M.idTipoPeriodo = PE.idTipoPeriodo
INNER JOIN ProyectoSistemaMatricula.unah.Seccion Se
ON PE.idPeriodo = SE.idPeriodo
INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
ON SE.idAsignatura = A.idAsignatura
INNER JOIN ProyectoSistemaMatricula.unah.SeccionMatricula SEMA
ON SE.idSeccion = SEMA.idSeccion
INNER JOIN ProyectoSistemaMatricula.unah.ObservacionNotaFinal Nota
ON SEMA.idObservacionNota = Nota.idObservacionNotaFinal

)
/*
SELECT *
FROM [unah].[vwVistaHisorialAcademico]
*/

