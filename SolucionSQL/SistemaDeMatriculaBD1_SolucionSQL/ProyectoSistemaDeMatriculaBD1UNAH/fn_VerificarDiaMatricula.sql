USE [ProyectoSistemaMatricula]
GO
/****** Object:  UserDefinedFunction [dbo].[VerificarDiaMatricula]    Script Date: 23/5/2020 16:04:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
*/
CREATE FUNCTION [unah].[fn_VerificarDiaMatricula](
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
	DECLARE @suma INT = (@conteoclasespasadas + @conteoclasesrepro);
	set @respuesta = 0;
	
	
	             SELECT @conteoclasesrepro=T3.descripcion
						FROM ProyectoSistemaMatricula.unah.SeccionMatricula T1
						INNER JOIN ProyectoSistemaMatricula.unah.ObservacionNotaFinal T3
						ON t1.idObservacionNota =t3.idObservacionNotaFinal
						WHERE T3.descripcion IS NULL 

                SELECT @conteoclasespasadas =T3.descripcion
						FROM ProyectoSistemaMatricula.unah.SeccionMatricula T1
						INNER JOIN ProyectoSistemaMatricula.unah.ObservacionNotaFinal T3
						ON t1.idObservacionNota =t3.idObservacionNotaFinal
						WHERE T3.descripcion IS NULL

				SELECT @primeringreso=T2.notaPaa 
						FROM ProyectoSistemaMatricula.unah.Estudiante T1
						INNER JOIN ProyectoSistemaMatricula.unah.NotaExamenAptitud T2
						ON T1.idNotaAptitud=T2.idNotaAptitud
						WHERE idEstudiante=@idEstudiante 

				/*SELECT @clasesCarrera= cantidadClasesCarrera
                      FROM ProyectoSistemaMatricula.unah.PlanEstudio
					  WHERE idEstudiante=@idEstudiante */


						SELECT @condicionDeporte=esRepresentanteArteoDeporte 
						FROM ProyectoSistemaMatricula.unah.Estudiante
						WHERE idEstudiante=@idEstudiante 

				SELECT @condicion=indiceGlobal 
				FROM ProyectoSistemaMatricula.unah.HistorialAcademico 
				WHERE idEstudiante=@idEstudiante  

				SELECT @condicionindicePeriodo=indicePeriodo 
				FROM ProyectoSistemaMatricula.unah.HistorialAcademico 
				WHERE idEstudiante=@idEstudiante  


				IF(@conteoclasesrepro IS NULL) AND (@conteoclasespasadas IS NULL) AND ( @condicion IS NULL) AND ( @condicionindicePeriodo IS NULL)
				   IF (@primeringreso>=1000) OR (@primeringreso<=1600)
				       BEGIN
						   IF(@prueba='2020-05-10')
							 SET @respuesta =1
						END
				   ELSE
				      BEGIN
						 IF (@primeringreso>=7000) OR (@primeringreso<=999)
						   BEGIN
				            IF(@prueba='2020-05-10')
					          SET @respuesta =1
						   END
					  END
				ELSE
				    BEGIN
						IF(60 - @conteoclasespasadas)<=10 AND (@prueba='2020-05-10')
							SET @respuesta =1
						ELSE
							BEGIN
								IF (@condicionDeporte=1) and (@prueba='2020-05-10')
									SET @respuesta =1
								ELSE
									BEGIN
										IF (@condicion>=80)  and ( @prueba='2020-05-10')
											IF(@conteoclasespasadas>=10) ---se puede probar con 3 porque segun los datos que ingrese el que tiene mas es igual a 3
									         SET @respuesta = 1;
										ELSE
											BEGIN
												IF (@condicionindicePeriodo>=90) and (@condicionindicePeriodo <=100) and (@prueba='2020-05-10') 
													SET @respuesta = 1;
												ELSE
													BEGIN
														IF (@condicionindicePeriodo>=70) and (@condicionindicePeriodo <=89) and ( @prueba='2020-05-10') 
															SET @respuesta = 1;	
														ELSE
															BEGIN
																IF (@condicionindicePeriodo>=0) and (@condicionindicePeriodo <=69) and (@prueba='2020-05-15') 
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
