-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Forma 003
-- =============================================

	SELECT E.idCarrera AS Cuenta,
		       CONCAT(P.primerNombre,' ', P.segundoNombre,' ', P.primerApellido,' ', P.segundoApellido) AS Nombre,
			   C.nombreCarrera AS Carrera,
			   CU.centroUniversitario AS Centro,
			   DATEPART(YEAR, M.fechaInicio) AS Año
			FROM ProyectoSistemaMatricula.unah.Estudiante E
			INNER JOIN ProyectoSistemaMatricula.unah.Matricula M
			ON M.idEstudiante = E.idEstudiante
			INNER JOIN ProyectoSistemaMatricula.unah.Persona P
			ON P.idPersona = E.idPersona
			INNER JOIN ProyectoSistemaMatricula.unah.Carrera C
			ON C.idCarrera = E.idCarrera
			INNER JOIN ProyectoSistemaMatricula.unah.CentroUniversitario CU
			ON CU.idCentro = E.idCentro
			WHERE E.idEstudiante = '20185629087'
			  AND M.idMatricula = 1

			

		--cod, asignatura, seccion, HI, HF, Dias, edificio, Aula, UV, OBS, PERIODO, SEMANA
		SELECT SM.idAsignatura AS Cod,
			   A.nombreAsignatura AS Asignatura,
			   SM.idSeccion AS Sección,
			   S.horaInicial AS HI,
			   S.horaFinal AS HF,
			   D.descripcionDias AS Dias,
			   S.idCodigoEdificio AS Edificio,
			   CONCAT(S.idCodigoAula, ' ', Au.observacion) AS Aula,
			   A.unidadesValorativas AS UV,
			   S.observaciones AS OBS,
			   S.idPeriodo AS Periodo
			FROM ProyectoSistemaMatricula.unah.Matricula M
			INNER JOIN ProyectoSistemaMatricula.unah.SeccionMatricula SM
			ON SM.idMatricula = M.idMatricula
			INNER JOIN ProyectoSistemaMatricula.unah.Seccion S
			ON (	SM.idSeccion = S.idSeccion 
				AND SM.idAsignatura = S.idAsignatura)
			INNER JOIN ProyectoSistemaMatricula.unah.Asignatura A
			ON A.idAsignatura = S.idAsignatura
			INNER JOIN ProyectoSistemaMatricula.unah.Aula Au
			ON (    Au.idCodigoAula = S.idCodigoAula
				AND Au.idCodigoEdificio = S.idCodigoEdificio)
			INNER JOIN ProyectoSistemaMatricula.unah.Dias D
			ON D.idDias = S.idDias
			WHERE M.idMatricula = 1
			  AND M.idEstudiante = '20185629087'






------------------------------------------------------------------------------------------------------
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




------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Consulta Lista de docentes por hora de la facultad de ingenieria
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
 WHERE T3.descripcion= 'Por Hora' AND T2.tipoCargo = 'Docente' AND T5.idFacultad = 1



------------------------------------------------------------------------------------------------------
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

 


------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Consulta que muestra los estudiantes que representan de manera artistica
-- o en deportes de la UNAH
-- =============================================

 SELECT T1.idEstudiante,
        T3.nombreCarrera,
		T2.primerNombre,
		T2.segundoNombre,
		T2.primerApellido,
		T2.segundoApellido
 FROM ProyectoSistemaMatricula.unah.Estudiante T1
 INNER JOIN ProyectoSistemaMatricula.unah.Persona T2
 ON T1.idPersona = T2.idPersona
 INNER JOIN ProyectoSistemaMatricula.unah.Carrera T3
 ON T1.idCarrera = T3.idCarrera 
 WHERE T1.esRepresentanteArteoDeporte = 1



------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Consulta que muestra estudiantes que estudian carrera simultanea
-- =============================================

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



------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Consultas que muestra estudiantes que obtuvieron mayor o igual a 1000 en la PAA
-- =============================================

SELECT T3.primerNombre,
	   T3.segundoNombre,
	   T3.primerApellido,
	   T3.segundoApellido
FROM ProyectoSistemaMatricula.unah.Estudiante T1
INNER JOIN ProyectoSistemaMatricula.unah.HistorialAcademico T2
ON T1.idEstudiante = T2.idEstudiante
INNER JOIN ProyectoSistemaMatricula.unah.persona T3
ON T1.idPersona = T3.idPersona
INNER JOIN ProyectoSistemaMatricula.unah.NotaExamenAptitud T4
ON T4.idNotaAptitud = T1.idNotaAptitud
WHERE T4.notaPaa>= 1000




------------------------------------------------------------------------------------------------------
-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Consulta Muestra la lista de los jefes de departamento
-- =============================================



SELECT T1.idEmpleado,
		T4.primerNombre,
		T4.segundoNombre,
		T4.primerApellido,
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
 WHERE T2.tipoCargo = 'Jefe Departamento'


 -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 23/05/2020 
-- Description: Consulta Muestra la lista de coordinadores de departamento
-- =============================================

SELECT T1.idEmpleado,
		T4.primerNombre,
		T4.segundoNombre,
		T4.primerApellido,
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
 WHERE T2.tipoCargo = 'Coordinador Clase'




 