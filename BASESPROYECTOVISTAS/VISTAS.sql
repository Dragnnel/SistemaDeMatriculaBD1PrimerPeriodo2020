

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
-- Author:		Francis Gonzales
-- Create date: 07-05-2020
-- Description:	Vista que me genera el historial Academico, al momento de querer el historial solo tendria que hacer el where
 --con el idEstudiante
 --_=============================================
CREATE VIEW VistaHisorialAcademico AS(
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



SELECT *
FROM VistaHisorialAcademico

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






----------------------------------------------------------------------------------------------------------------------------------------


-- =============================================
-- Author:		Francis Gonzales
-- Create date: 07-05-2020
-- Description:	Vista que me gerera la forma 003, al momento de querer el historial solo tendria que hacer el where
 --con el idEstudiante
 --_=============================================

 CREATE VIEW VistaForma003 AS(

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

SELECT *
FROM VistaForma003

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


-------------------------------------------------------------------------------------------------------------------------------------------------
 =============================================
-- Author:		Francis Gonzales
-- Create date: 07-05-2020
-- Description:	Vista que me devuelve los nombres,
-- num cuenta de los estudiantes que tienen el indice global bajo  y son suspendidos por tenerlo menor que 50
 --_=============================================


 CREATE VIEW VistaEstudiantesconriesgosancion AS(

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

SELECT *
FROM VistaEstudiantesconriesgosancion


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


-----------------------------------------------------------------------------------------------------------------------------------------------

=============================================
-- Author:		Francis Gonzales
-- Create date: 07-05-2020
-- Description:	Me devuelve los estudiantes con excelencia academica

 --_=============================================
CREATE VIEW VistaExcelenciaAcademica AS(

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

SELECT *
FROM VistaExcelenciaAcademica

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
WHERE T2.indiceGlobal >=19 AND T4.nombreCarrera= 'Sistemas' --- Lo pruebo con 19 por los datos que tengo ingresados

-------------------------------------------------------------------------------------------------------------------------------------------------------

=============================================
-- Author:		Francis Gonzales
-- Create date: 07-05-2020
-- Description:	Me devuelve los estudiantes que estudian carreras simultaneas

 --_=============================================
CREATE VIEW  VistaCarrerasSimultaneas AS(

SELECT T3.primerNombre,
       T3.segundoNombre,
	   T3.primerApellido,
	   T3.segundoApellido,
       T1.idEstudiante,
	   T1.poseeCarreraSimultanea
FROM ProyectoSistemaMatricula.unah.Estudiante T1
INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico T2
ON t1.idEstudiante = T2.idEstudiante
INNER JOIN ProyectoSistemaMatricula.unah.Persona T3
ON T1.idPersona = T3.idPersona
INNER JOIN ProyectoSistemaMatricula.unah.Carrera T4
ON T1.idCarrera = T4.idCarrera
WHERE T1.poseeCarreraSimultanea = 1


)

SELECT *
FROM VistaCarrerasSimultaneas

SELECT T3.primerNombre,
       T3.segundoNombre,
	   T3.primerApellido,
	   T3.segundoApellido,
       T1.idEstudiante,
	   T1.poseeCarreraSimultanea
FROM ProyectoSistemaMatricula.unah.Estudiante T1
INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico T2
ON t1.idEstudiante = T2.idEstudiante
INNER JOIN ProyectoSistemaMatricula.unah.Persona T3
ON T1.idPersona = T3.idPersona
INNER JOIN ProyectoSistemaMatricula.unah.Carrera T4
ON T1.idCarrera = T4.idCarrera
WHERE T1.poseeCarreraSimultanea IS NULL     -------------------Lo pruebo con Null porque no tengo datos ingresados pero tendria que ser igual a 1

----------------------------------------------------------------------------------------------------------------------------------------------------



CREATE VIEW HabitacionDatos AS(
)