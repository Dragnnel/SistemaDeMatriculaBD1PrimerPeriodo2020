PRINT @prueba
CREATE FUNCTION DiaMatriculaEstudiantes(@idEstudiante INT
								
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


						SELECT @condicionDeporte=esRepresentanteArteoDeporte 
						FROM ProyectoSistemaMatricula.unah.Estudiante
						WHERE idEstudiante=@idEstudiante  

				SELECT @condicion=indiceGlobal FROM ProyectoSistemaMatricula.unah.HistorialAcademico 
				WHERE idEstudiante=@idEstudiante  

				SELECT @condicionindicePeriodo=indicePeriodo FROM ProyectoSistemaMatricula.unah.HistorialAcademico 
				WHERE idEstudiante=@idEstudiante  

				If ( @conteoclasesrepro IS NULL) AND ( @conteoclasespasadas IS NULL) AND ( @condicionindicePeriodo IS NULL) AND (@condicion IS NULL)
				     IF (@primeringreso>= 1000) OR (@primeringreso>= 1600)
					     IF(@prueba='2020-05-09')
					     SET @respuesta = 1;
						 ELSE
						    BEGIN
							    IF (@primeringreso>= 700) OR (@primeringreso>= 999)
								   IF(@prueba='2020-05-09')
					                SET @respuesta = 1;
							END
                 ELSE
							BEGIN
								  IF (56-@conteoclasespasadas)<=10 AND (@prueba='2020-05-07')
						  SET @respuesta = 1;
						ELSE
						   BEGIN 
								IF (@condicionDeporte=1) and (@prueba='2020-05-09')
						  SET @respuesta = 1;
						ELSE
						   BEGIN
								IF (@condicion>=80)  and ( @prueba='2020-05-07')
									 IF(@conteoclasespasadas>=10) ---se puede probar con 3 porque segun los datos que ingrese el que tiene mas es igual a 3
									   SET @respuesta = 1;
						 ELSE
							BEGIN 
								 IF (@condicionindicePeriodo>=90) and (@condicionindicePeriodo <=100) and (@prueba='2020-06-03')     
									 SET @respuesta = 1;
								  ELSE 
									 BEGIN
										IF (@condicionindicePeriodo>=70) and (@condicionindicePeriodo <=89) and ( @prueba='2020-05-04') 
											 SET @respuesta = 1;
										ELSE
										   BEGIN 
												IF (@condicionindicePeriodo>=0) and (@condicionindicePeriodo <=69) and (@prueba='2020-05-07') 
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

	SELECT [dbo].[DiaMatriculaEstudiantes](765499755) ---Primer ingreso 1

	SELECT [dbo].[DiaMatriculaEstudiantes](7054082)--- id estudiante que no existe NULL

	SELECT [dbo].[DiaMatriculaEstudiantes](741646051)----reingreso 279306733

	SELECT [dbo].[DiaMatriculaEstudiantes](279306733)
