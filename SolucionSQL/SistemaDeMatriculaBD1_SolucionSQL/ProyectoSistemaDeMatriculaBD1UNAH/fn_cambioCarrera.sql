-- =============================================
-- Author:		Francis Ruby Gonzales					
--				Luis Fernando Estrada
--				David Alexander Palacios
-- Create date: 12/05/2020
-- Description:	Verificar si cumple los requisitos para cambio de carrera
-- =============================================

CREATE FUNCTION [unah].[fnRequisitosCambioCarrera](@idEstudiante VARCHAR(11),
                                      @idCarrera INT
								
										)


	RETURNS INT
	AS
	
	BEGIN
    DECLARE @condicionIndice INT;
	DECLARE @respuesta BIT;
	DECLARE @condicionindicePeriodo INT;
	DECLARE @conteoclasespasadas INT;
	DECLARE @clasesCarrera INT;
	DECLARE @facultad VARCHAR(50);
	DECLARE @puntosPAA INT;
	DECLARE @pAA INT;
	DECLARE  @pAM INT;
	DECLARE @pCC  INT;
	
	set @respuesta = 0;



				SELECT @condicionIndice=indiceGlobal 
				FROM ProyectoSistemaMatricula.unah.HistorialAcademico 
				WHERE idEstudiante=@idEstudiante  

				SELECT @condicionindicePeriodo=indicePeriodo 
				FROM ProyectoSistemaMatricula.unah.HistorialAcademico 
				WHERE idEstudiante=@idEstudiante

               SELECT @conteoclasespasadas =COUNT( T1.descripcion) 
               FROM ProyectoSistemaMatricula.unah.ObservacionNotaFinal T1
			   INNER JOIN ProyectoSistemaMatricula.unah.SeccionMatricula T2
			   ON T1.idObservacionNotaFinal = T2.idObservacionNota
			   INNER JOIN ProyectoSistemaMatricula.unah.Matricula T3
			   ON T3.idMatricula = T2.idMatricula
			   INNER JOIN ProyectoSistemaMatricula.unah.Estudiante T4
			   ON T4.idEstudiante = T3.idEstudiante
               WHERE T1.descripcion ='APR' AND T4.idEstudiante=@idEstudiante

			   SELECT @facultad =T2.idFacultad
			   FROM ProyectoSistemaMatricula.unah.Carrera T1
			   INNER JOIN ProyectoSistemaMatricula.unah.Facultad T2
			   ON T1.idFacultad = T2.idFacultad
			   INNER JOIN ProyectoSistemaMatricula.unah.Estudiante T3
			   ON T1.idCarrera = T3.idCarrera
			   WHERE T1.idCarrera =@idCarrera

			   SELECT @pAA=T2.notaPaa 
				FROM ProyectoSistemaMatricula.unah.Estudiante T1
				INNER JOIN ProyectoSistemaMatricula.unah.NotaExamenAptitud T2
				ON T1.idNotaAptitud=T2.idNotaAptitud
				WHERE idEstudiante=@idEstudiante 

				 SELECT @pAM=T2.notaPam
				FROM ProyectoSistemaMatricula.unah.Estudiante T1
				INNER JOIN ProyectoSistemaMatricula.unah.NotaExamenAptitud T2
				ON T1.idNotaAptitud=T2.idNotaAptitud
				WHERE idEstudiante=@idEstudiante 

				SELECT @pCC=T2.notaPccns
				FROM ProyectoSistemaMatricula.unah.Estudiante T1
				INNER JOIN ProyectoSistemaMatricula.unah.NotaExamenAptitud T2
				ON T1.idNotaAptitud=T2.idNotaAptitud
				WHERE idEstudiante=@idEstudiante
		
				IF (@conteoclasespasadas>=10) AND (@condicionIndice> 70) AND (@condicionindicePeriodo>=65)
				BEGIN
					IF(@facultad = 1) OR (@facultad = 8) 
						BEGIN
						    IF(@pAA>=1000)
							  SET  @respuesta=1;
						END
					 ELSE
						IF (@facultad = 2) OR (@facultad = 3)OR (@facultad =6) OR (@facultad = 7) 
						BEGIN
							IF(@pAA>=700)
							  SET  @respuesta=1;
						END
						ELSE
						  IF (@facultad = 5) AND (@facultad = 4)
						  BEGIN
								IF(@pAA>=700) ANd (@pCC>=400)
								  SET  @respuesta=1;
						  END
						 
				END

				ELSE
				     SET  @respuesta=0;
			
			


			
    RETURN @respuesta;
    END
    GO


	/*SELECT *
	FRom ProyectoSistemaMatricula.unah.Estudiante
	
	SELECT [unah].[RequisitosCambioCarrera](20199087, 6)

	*/