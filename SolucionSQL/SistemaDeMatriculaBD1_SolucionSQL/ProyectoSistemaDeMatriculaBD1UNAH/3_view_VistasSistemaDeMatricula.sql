/*
Historial Academico---
Forma 003----
Clases por carrera
Clases del departamento
Listado de las secciones de una clase
Alumnos que seran sancionados por su indice---
Excelencia de una carrera---
Prosene
Docentes de un departamento
Estudiantes con carreras simultaneas---
*/
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
FROM unah.vwVistaHisorialAcademico
*/


----------------------------------------------------------------------------------------------------------------------------------------
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
FROM unah.vwVistaForma003
*/

-------------------------------------------------------------------------------------------------------------------------------------------------
 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020 
-- Description:	Vista que me devuelve los nombres,
-- num cuenta de los estudiantes que tienen el indice global bajo  y son suspendidos por tenerlo menor que 50
-- =============================================
 CREATE VIEW [unah].[vwVistaEstudiantesconriesgosancion] AS(

 SELECT T3.primerNombre,
       T3.primerApellido,
       T3.segundoNombre,
	   T3.segundoApellido,
       T1.idEstudiante,
	   T2.indiceGlobal
FROM ProyectoSistemaMatricula.unah.Estudiante T1
INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico T2
ON t1.idEstudiante = T2.idEstudiante
INNER JOIN ProyectoSistemaMatricula.unah.Persona T3
ON T1.idPersona = T3.idPersona
WHERE T2.indiceGlobal <= 50

)

/*
SELECT *
FROM unah.vwVistaEstudiantesconriesgosancion
*/
-----------------------------------------------------------------------------------------------------------------------------------------------
 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/05/2020 
-- Description:	Me devuelve los estudiantes con excelencia academica
-- =============================================

CREATE VIEW [unah].[vwVistaExcelenciaAcademica] AS(
SELECT T3.primerNombre,
       T3.segundoNombre,
	   T3.primerApellido,
	   T3.segundoApellido,
       T1.idEstudiante,
	   T2.indiceGlobal
FROM ProyectoSistemaMatricula.unah.Estudiante T1
INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico T2
ON t1.idEstudiante = T2.idEstudiante
INNER JOIN ProyectoSistemaMatricula.unah.Persona T3
ON T1.idPersona = T3.idPersona
INNER JOIN ProyectoSistemaMatricula.unah.Carrera T4
ON T1.idCarrera = T4.idCarrera
WHERE T2.indiceGlobal >=80
)
/*
SELECT *
FROM unah.vwVistaExcelenciaAcademica
*/
-------------------------------------------------------------------------------------------------------------------------------------------------------
 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/05/2020 
-- Description:Me devuelve los estudiantes que estudian carreras simultaneas
-- =============================================


CREATE VIEW  [unah].[vwVistaCarrerasSimultaneas] AS(

SELECT T3.primerNombre,
       T3.segundoNombre,
	   T3.primerApellido,
	   T3.segundoApellido,
       T1.idEstudiante
FROM ProyectoSistemaMatricula.unah.Estudiante T1
INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico T2
ON t1.idEstudiante = T2.idEstudiante
INNER JOIN ProyectoSistemaMatricula.unah.Persona T3
ON T1.idPersona = T3.idPersona
INNER JOIN ProyectoSistemaMatricula.unah.Carrera T4
ON T1.idCarrera = T4.idCarrera
WHERE T1.poseeCarreraSimultanea = 1


)
/*
SELECT *
FROM unah.vwVistaCarrerasSimultaneas
*/
----------------------------------------------------------------------------------------------------------------------------------------------------
 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/05/2020 
-- Description:	Me devuelve la cantidad de clases que el estudiante ah aprobado
-- =============================================
 CREATE VIEW [unah].[vwVistaCantidadClasesAPR] AS(
  SELECT   T5.idEstudiante,
			T6.primerNombre,
			T6.segundoNombre,
			T6.primerApellido,
			T6.segundoApellido,
		   COUNT( T3.descripcion) AS CantidadClasesAPR
   FROM ProyectoSistemaMatricula.unah.SeccionMatricula T1
	INNER JOIN ProyectoSistemaMatricula.unah.ObservacionNotaFinal T3
	ON t1.idObservacionNota =t3.idObservacionNotaFinal
	INNER JOIN ProyectoSistemaMatricula.unah.Matricula T4
	ON T1.idMatricula =T4.idMatricula
	INNER JOIN ProyectoSistemaMatricula.unah.Estudiante T5
	ON T4.idEstudiante = T5.idEstudiante
	INNER JOIN ProyectoSistemaMatricula.unah.Persona T6
	ON T5.idPersona = T6.idPersona
	WHERE T3.descripcion ='APR'
	GROUP BY T3.descripcion, T5.idEstudiante, T6.primerNombre, T6.segundoNombre,T6.primerApellido, T6.segundoApellido

)

/*
SELECT *
FROM unah.vwVistaCantidadClasesAPR
 
  */
	--------------------------------------------------------------------------------------------------------------------------
 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/05/2020 
-- Description:	Me devuelve la cantidad de clases donde el estudiante  no se presento
-- =============================================

 CREATE VIEW [unah].[vwVistaCantidadClasesNSP] AS(

 SELECT   T5.idEstudiante,
			T6.primerNombre,
			T6.segundoNombre,
			T6.primerApellido,
			T6.segundoApellido,
		   COUNT( T3.descripcion) AS CantidadClasesAPR
   FROM ProyectoSistemaMatricula.unah.SeccionMatricula T1
	INNER JOIN ProyectoSistemaMatricula.unah.ObservacionNotaFinal T3
	ON t1.idObservacionNota =t3.idObservacionNotaFinal
	INNER JOIN ProyectoSistemaMatricula.unah.Matricula T4
	ON T1.idMatricula =T4.idMatricula
	INNER JOIN ProyectoSistemaMatricula.unah.Estudiante T5
	ON T4.idEstudiante = T5.idEstudiante
	INNER JOIN ProyectoSistemaMatricula.unah.Persona T6
	ON T5.idPersona = T6.idPersona
	WHERE T3.descripcion ='NSP'
	GROUP BY T3.descripcion, T5.idEstudiante, T6.primerNombre, T6.segundoNombre,T6.primerApellido, T6.segundoApellido


)

/*
SELECT *
FROM unah.vwVistaCantidadClasesNSP


*/
---------------------------------------------------------------------------------------------------------------
 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/05/2020 
-- Description:	Me devuelve la cantidad de clases donde el estudiante Abandono
-- =============================================


 CREATE VIEW [unah].[vwVistaCantidadClasesABN] AS(
  SELECT   T5.idEstudiante,
			T6.primerNombre,
			T6.segundoNombre,
			T6.primerApellido,
			T6.segundoApellido,
		   COUNT( T3.descripcion) AS CantidadClasesAPR
   FROM ProyectoSistemaMatricula.unah.SeccionMatricula T1
	INNER JOIN ProyectoSistemaMatricula.unah.ObservacionNotaFinal T3
	ON t1.idObservacionNota =t3.idObservacionNotaFinal
	INNER JOIN ProyectoSistemaMatricula.unah.Matricula T4
	ON T1.idMatricula =T4.idMatricula
	INNER JOIN ProyectoSistemaMatricula.unah.Estudiante T5
	ON T4.idEstudiante = T5.idEstudiante
	INNER JOIN ProyectoSistemaMatricula.unah.Persona T6
	ON T5.idPersona = T6.idPersona
	WHERE T3.descripcion ='ABN'
	GROUP BY T3.descripcion, T5.idEstudiante, T6.primerNombre, T6.segundoNombre,T6.primerApellido, T6.segundoApellido

)
/*
SELECT *
FROM unah.vwVistaCantidadClasesABN
	*/
-------------------------------------------------------------------------------------------------------------------------------
 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/05/2020 
-- Description:		Lista de los Representantes Artisticos y de Deportes en la u
-- =============================================
	
	

 CREATE VIEW [unah].[vwVistaListaRepresentantesArtisticos] AS(

  SELECT T1.idEstudiante,
        T3.nombreCarrera,
		T2.primerNombre,
		T2.segundoNombre,
		T2.primerApellido,
		T2.segundoApellido,
		T1.esRepresentanteArteoDeporte
        
 FROM ProyectoSistemaMatricula.unah.Estudiante T1
 INNER JOIN ProyectoSistemaMatricula.unah.Persona T2
 ON T1.idPersona = T2.idPersona
 INNER JOIN ProyectoSistemaMatricula.unah.Carrera T3
 ON T1.idCarrera = T3.idCarrera 
 WHERE T1.esRepresentanteArteoDeporte = 1

)

/*
SELECT *
FROM unah.vwVistaListaRepresentantesArtisticos
 */
 ---------------------------------------------------------------------------------------------------------------
 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 07/05/2020 
-- Description:		Lista de Empleados que tienen cargo de Docente que estan Contratados por hora
-- =============================================
 
CREATE VIEW [unah].[vwVistaDocentesPorHora] AS(

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
 WHERE T3.descripcion= 'Por Hora' AND T2.tipoCargo = 'Docente'

)

/*
SELECT *
FROM unah.vwVistaDocentesPorHora
 */
 -------------------------------------------------------------------------------------------------------------------
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
FROM unah.vwVistaDocentesPermanente
 */