  -- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 10/04/2020 
-- Description:	Funcion que verifica el dia que le toca matricula a cada estudiante ya sea de primer ingreso, 
--reingreso, por egresar y representantes artisticos o Deportes UNAH
-- =============================================


/*
PRINT @prueba

SELECT * FROM ProyectoSistemaMatricula.unah.ObservacionNotaFinal

*/


CREATE FUNCTION [unah].[fnVerificarDiaMatricula](
	@idEstudiante VARCHAR(11)
)


	RETURNS INT
	AS
	
	BEGIN
    DECLARE @condicion INT;
	DECLARE @condicionDeporte BIT;
	DECLARE @respuesta BIT;
	DECLARE @condicionindicePeriodo INT;
	DECLARE @prueba DATE = GETDATE();
	DECLARE @conteoclasespasadas INT;
	DECLARE @conteoclasesrepro INT;
	DECLARE @primeringreso INT;
	DECLARE @clasesCarrera INT;
	DECLARE @conteoclasesNsp INT;
	DECLARE @conteoclasesAbn INT;
	DECLARE @sumaClasesApnRpbAbnNsp INT = (@conteoclasespasadas + @conteoclasesrepro + @conteoclasesAbn + @conteoclasesNsp);
	set @respuesta = 0;
	
	
	            SELECT @conteoclasesrepro= COUNT( T1.idObservacionNota) 
								   FROM ProyectoSistemaMatricula.unah.SeccionMatricula T1
									INNER JOIN ProyectoSistemaMatricula.unah.Matricula T2
									ON T1.idMatricula =T2.idMatricula
									WHERE T2.idEstudiante= @idEstudiante AND T2.idHistorial =@idEstudiante AND T1.idObservacionNota ='RPB' 

				 SELECT @conteoclasesAbn= COUNT( T1.idObservacionNota) 
								   FROM ProyectoSistemaMatricula.unah.SeccionMatricula T1
									INNER JOIN ProyectoSistemaMatricula.unah.Matricula T2
									ON T1.idMatricula =T2.idMatricula
									WHERE T2.idEstudiante= @idEstudiante AND T2.idHistorial =@idEstudiante AND T1.idObservacionNota ='ABN' 

				 SELECT @conteoclasesNsp= COUNT( T1.idObservacionNota) 
								   FROM ProyectoSistemaMatricula.unah.SeccionMatricula T1
									INNER JOIN ProyectoSistemaMatricula.unah.Matricula T2
									ON T1.idMatricula =T2.idMatricula
									WHERE T2.idEstudiante= @idEstudiante AND T2.idHistorial =@idEstudiante AND T1.idObservacionNota ='NSP' 

                SELECT @conteoclasespasadas =  COUNT( T1.idObservacionNota) 
								   FROM ProyectoSistemaMatricula.unah.SeccionMatricula T1
									INNER JOIN ProyectoSistemaMatricula.unah.Matricula T2
									ON T1.idMatricula =T2.idMatricula
									WHERE T2.idEstudiante= @idEstudiante AND T2.idHistorial =@idEstudiante AND T1.idObservacionNota ='APR' 

				SELECT @primeringreso=T2.notaPaa 
						FROM ProyectoSistemaMatricula.unah.Estudiante T1
						INNER JOIN ProyectoSistemaMatricula.unah.NotaExamenAptitud T2
						ON T1.idNotaAptitud=T2.idNotaAptitud
						WHERE idEstudiante=@idEstudiante 

				SELECT @clasesCarrera= T1.cantidadClasesCarrera
						FROM ProyectoSistemaMatricula.unah.PlanEstudio T1
						INNER JOIN ProyectoSistemaMatricula.unah.Carrera T2
						ON T2.idPlanEstudio =T1.idPlanEstudio
						INNER JOIN ProyectoSistemaMatricula.unah.Estudiante T3
						ON T3.idCarrera = T2.idCarrera
						WHERE T3.idEstudiante =@idEstudiante


						SELECT @condicionDeporte=esRepresentanteArteoDeporte 
						FROM ProyectoSistemaMatricula.unah.Estudiante
						WHERE idEstudiante=@idEstudiante 

				SELECT @condicion=indiceGlobal 
				FROM ProyectoSistemaMatricula.unah.HistorialAcademico 
				WHERE idEstudiante=@idEstudiante  

				SELECT @condicionindicePeriodo=indicePeriodo 
				FROM ProyectoSistemaMatricula.unah.HistorialAcademico 
				WHERE idEstudiante=@idEstudiante  


				IF(@sumaClasesApnRpbAbnNsp =0)  
				   IF (@primeringreso>=1000) OR (@primeringreso<=1600)
				       BEGIN
						   IF(@prueba='2020-05-25')
							 SET @respuesta =1
						END
				   ELSE
				      BEGIN
						 IF (@primeringreso>=7000) OR (@primeringreso<=999)
						   BEGIN
				            IF(@prueba='2020-05-26')
					          SET @respuesta =1
						   END
					  END
				ELSE
				    BEGIN
						IF(@clasesCarrera - @conteoclasespasadas)<=10 AND (@prueba='2020-05-26')
							SET @respuesta =1
						ELSE
							BEGIN
								IF (@condicionDeporte=1) and (@prueba='2020-05-24')
									SET @respuesta =1
								ELSE
									BEGIN
										IF (@condicion>=80)  and ( @prueba='2020-05-24')
											IF(@conteoclasespasadas>=10) ---se puede probar con 3 porque segun los datos que ingrese el que tiene mas es igual a 3
									         SET @respuesta = 1;
										ELSE
											BEGIN
												IF (@condicionindicePeriodo>=90) and (@condicionindicePeriodo <=100) and (@prueba='2020-05-24') 
													SET @respuesta = 1;
												ELSE
													BEGIN
														IF (@condicionindicePeriodo>=70) and (@condicionindicePeriodo <=89) and ( @prueba='2020-05-24') 
															SET @respuesta = 1;	
														ELSE
															BEGIN
																IF (@condicionindicePeriodo>=0) and (@condicionindicePeriodo <=69) and (@prueba='2020-05-24') 
																	 SET @respuesta = 1;
																ELSE
																	 SET @respuesta = 0;

															END
													END    
									              
											END
									END
								 
							END
						   
					END
		

			
    RETURN @respuesta;
    END
    GO

/*3  Regresa 1
SELECT [unah].[fnVerificarDiaMatricula](20168905411) ---- Reingreso regresa 0
2 

SELECT *FROM ProyectoSistemaMatricula.unah.Estudiante
*/

