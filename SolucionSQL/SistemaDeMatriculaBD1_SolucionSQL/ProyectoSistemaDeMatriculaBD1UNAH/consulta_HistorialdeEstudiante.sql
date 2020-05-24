-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Historial Academico
-- =============================================

SELECT E.idEstudiante AS Cuenta,
			   CONCAT(P.primerNombre,' ', P.segundoNombre,' ', P.primerApellido,' ', P.segundoApellido) AS Nombre,
			   C.nombreCarrera AS Carrera,
			   CU.centroUniversitario AS Centro,
			   HA.indiceGlobal AS IndiceGlobal,
			   HA.indicePeriodo As IndicePeriodo
				  FROM ProyectoSistemaMatricula.unah.Persona P
			INNER JOIN ProyectoSistemaMatricula.unah.Estudiante E
					ON E.idpersona = P.idPersona
			INNER JOIN ProyectoSistemaMatricula.unah.Carrera C
					ON C.idCarrera = E.idCarrera
			INNER JOIN ProyectoSistemaMatricula.unah.CentroUniversitario CU
					ON CU.idCentro = E.idCentro
			INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico HA
					ON HA.idEstudiante = E.idEstudiante
				 WHERE E.idEstudiante = '20185629087'
			
		/*Aqui se obtienen todas las asignaturas, tanto aprobadas, reprobadas y NSP
		  si la esta cursando en el periodo actual que no ha sido calificada entonces no la muestra*/
		SELECT SM.idAsignatura AS CODIGO,
			   A.nombreAsignatura AS ASIGNATURA,
			   A.unidadesValorativas AS UV,
			   SM.idSeccion AS SECCION,
			   CONCAT(Pe.primerNombre,' ', Pe.segundoNombre,' ', Pe.primerApellido,' ', Pe.segundoApellido) AS DOCENTE,
			   P.anio AS AÑO,
			   S.idPeriodo AS PERIODO,
			   SM.notaFinal AS CALIFICACION,
			   SM.idObservacionNota AS OBS
				  FROM ProyectoSistemaMatricula.unah.Matricula M
			INNER JOIN ProyectoSistemaMatricula.unah.SeccionMatricula SM
					ON SM.idMatricula = M.idMatricula
			INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
					ON (S.idSeccion = SM.idSeccion AND S.idAsignatura = SM.idAsignatura)
			INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
					ON A.idAsignatura = S.idAsignatura
			INNER JOIN ProyectoSistemaMatricula.unah.Docente D
					ON D.idDocente = S.idDocente
			INNER JOIN ProyectoSistemaMatricula.unah.Persona Pe
					ON Pe.idPersona = D.idDocente
			INNER JOIN ProyectoSistemaMatricula.unah.Periodo P
				    ON (    S.idPeriodo = P.idPeriodo 
						AND S.fechaInicioPeriodo = P.fechaInicio 
						AND S.idTipoPeriodo = P.idTipoPeriodo)
				 WHERE M.idEstudiante = '20185629087'
				   AND M.idHistorial = '20185629087'
				   AND SM.idObservacionNota IN ('APR','NSP','RPB','ABD')
