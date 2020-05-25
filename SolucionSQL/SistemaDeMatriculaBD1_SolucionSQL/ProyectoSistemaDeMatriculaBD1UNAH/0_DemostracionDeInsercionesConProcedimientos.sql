---Demotracion de inserciones con procedimientos 

/*

EXECUTE [unah].[spInsertarDatosAsignatura] idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo


SELECT *
	FROM ProyectoSistemaMatricula.unah.Asignatura
*/

EXECUTE [unah].[spInsertarDatosAsignatura] 'EO021','TECNICAS DE LECTURA (OPTATIIVA)',2,1,0,1
EXECUTE [unah].[spInsertarDatosAsignatura] 'EO023','REDACCION DE MONOGRAFIA',9,0,0,2
EXECUTE [unah].[spInsertarDatosAsignatura] 'RR174','Natacion',2,0,0,1
EXECUTE [unah].[spInsertarDatosAsignatura] 'ILS122','INTROD.A LA LENGUA DE SENAS',3,0,0,1
EXECUTE [unah].[spInsertarDatosAsignatura] 'IA012','INTROD. A LA INFORMAT.',3,0,0,1
EXECUTE [unah].[spInsertarDatosAsignatura] 'CF014','CONTABILIDAD I',6,0,0,1
EXECUTE [unah].[spInsertarDatosAsignatura] 'CE020','PRINCIPIOS DE ECONOMIA',8,1,0,2
EXECUTE [unah].[spInsertarDatosAsignatura] 'IS311','CIRCUITOS ELECTRICOS ING.SIST',9,1,0,2

INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IS311',1);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('DET280',7);
INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IA023',7);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IS412',1,'IS310','MM420');
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IA023',7,'IA012',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IA044',7,'IA033',NULL);
INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('DAE300',7,'SC101',NULL);

INSERT INTO ProyectoSistemaMatricula.unah.PensumAcademico(idAsignatura,idPlanEstudio) VALUES('IA012',7);


--INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('IA033',7,'IA012','DET175');
--INSERT INTO ProyectoSistemaMatricula.unah.Requisitos(idAsignatura,idPlanEstudio,idRequisito1, idRequisito2) VALUES('DET385',7,'DET280',NULL);


/*
[unah].[spInsertarDatosPersonaEstudiante]
[unah].[spInsertarDatosAula]
[unah].[spInsertarDatosPlanEstudio]
[unah].[spInsertarDatosReferencia]
[unah].[spInsertarDatosAula]
[unah].[spInsertarDatosTelefono]
[unah].[spInsertarDatosAula]
[unah].[spInsertarDatosEdificio]
[unah].[spInsertarDatosRequisitos]
[unah].[spInsertarDatosCarrera]
[unah].[spInsertarDatosTelefono]
[unah].[spInsertarDatosCentroUniversitario]
[unah].[spInsertarDatosTelefono]
[unah].[spInsertarDatosTipoSeccion]
[unah].[spInsertarDatosSexo]
[unah].[spInsertarDatosTipoPeriodo]
[unah].[spInsertarDatosTipoDiscapacidad]
[unah].[spInsertarDatosPersonaEstudiante]
[unah].[spInsertarDatosTipoEmpleado]
[unah].[spInsertarDatosTelefono]
[unah].[spInsertarDatosPersonaEmpleado]
[unah].[spInsertarDatosPeriodo]
[unah].[spInsertarDatosPensumAcademico]
[unah].[spInsertarDatosParentesco]
[unah].[spInsertarDatosPais]
[unah].[spInsertarDatosObservacionNotaFinal]
[unah].[spInsertarDatosNotaExamenAptitud]
[unah].[spInsertarDatosNacionalidad]
[unah].[spInsertarDatosMunicipio]
[unah].[spInsertarDatosMatricula]
[unah].[spInsertarDatosJefeDepartamento]
[unah].[spInsertarDatosInstructor]
[unah].[spInsertarDatosGruposEtnico]
[unah].[spInsertarDatosGradoAcademico]
[unah].[spInsertarDatosFacultad]
[unah].[spInsertarDatosFacultad]
[unah].[spInsertarDatosEstudiante]
[unah].[spInsertarDatosEstadoCivil]
[unah].[spInsertarDatosDepartamento]
[unah].[spInsertarDatosFacultad]
[unah].[spInsertarDatosFacultad]
*/
--Demotracion