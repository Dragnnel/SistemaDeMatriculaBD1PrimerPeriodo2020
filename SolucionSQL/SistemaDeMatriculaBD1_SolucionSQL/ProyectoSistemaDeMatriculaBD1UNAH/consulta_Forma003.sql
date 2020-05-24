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


