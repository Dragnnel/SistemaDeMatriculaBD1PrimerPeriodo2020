---Demotracion de inserciones con procedimientos 

/*

EXECUTE [unah].[spInsertarDatosAsignatura] idAsignatura,nombreAsignatura,unidadesValorativas,examenUnificado,poseeLaboratorio,idTipoPeriodo


SELECT *
	FROM ProyectoSistemaMatricula.unah.Asignatura
*/

EXECUTE [unah].[spInsertarDatosAsignatura] 'TL321','TECNICAS DE LECTURA (OPTATIIVA)',2,1,0,1
EXECUTE [unah].[spInsertarDatosAsignatura] 'RM185','REDACCION DE MONOGRAFIA',9,0,0,2
EXECUTE [unah].[spInsertarDatosAsignatura] 'NT135','Natacion',2,0,0,1
EXECUTE [unah].[spInsertarDatosAsignatura] 'AN101','ANTROPOLOGIA GENERAL',4,0,0,1

