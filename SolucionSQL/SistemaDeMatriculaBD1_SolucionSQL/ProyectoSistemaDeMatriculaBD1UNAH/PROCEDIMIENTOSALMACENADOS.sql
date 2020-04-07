/* Creacion de procedimientos Con el id Incrementado
-----------------------------------------------------------------------------------------------------
*/
CREATE PROCEDURE [unah].[InsertarDatosContinente] (
	 @pContinente VARCHAR(45),
	 @pmensaje VARCHAR(40) OUT
	 )
	-- Add the parameters for the stored procedure here

AS
BEGIN
	DECLARE @conteo INTEGER;
	SELECT @conteo=MAX(idContinente)
	FROM unah.Continente;

  
	INSERT INTO Continente (idContinente, Continente) VALUES ((@conteo+1), @pContinente);
	SET @pmensaje = 'Registro Guardado';
END

SELECT *
FROM unah.Continente

/*
-----------------------------------------------------------------------------------------------------
*/

CREATE PROCEDURE [unah].[InsertarDatosPais] (
	 @ppais VARCHAR(45),
	 @pidContinente INT,
	 @pmensaje VARCHAR(40) OUT
	 )
	-- Add the parameters for the stored procedure here

AS
BEGIN
	DECLARE @conteo INTEGER;
	SELECT @conteo=MAX(idpais)
	FROM unah.Pais;
	
  
	INSERT INTO Pais (idPais, Pais, idContinente) VALUES ((@conteo+1), @ppais, @pidContinente );
	SET @pmensaje = 'Registro Guardado';
END


/*
-----------------------------------------------------------------------------------------------------
*/


CREATE PROCEDURE [unah].[InsertarDatosDepartamento] (
	 @pdepartamento VARCHAR(45),
	 @pidPais INT,
	 @pmensaje VARCHAR(40) OUT
	 )
	-- Add the parameters for the stored procedure here

AS
BEGIN
	DECLARE @conteo INTEGER;
	SELECT @conteo=MAX(idDepartamento)
	FROM unah.Departamento;

  
	INSERT INTO Departamento (idDepartamento, Departamento, idPais) VALUES ((@conteo+1), @pDepartamento, @pidPais);
	SET @pmensaje = 'Registro Guardado';
END


/*
-----------------------------------------------------------------------------------------------------
*/

CREATE PROCEDURE [unah].[InsertarDatosMunicipio] (
	 @pMunicipio VARCHAR(45),
	 @pidDepartamento INT,
	 @pmensaje VARCHAR(40) OUT
	 )
	-- Add the parameters for the stored procedure here

AS
BEGIN
	DECLARE @conteo INTEGER;
	SELECT @conteo=MAX(idMunicipio)
	FROM unah.Municipio;

  
	INSERT INTO Municipio (idMunicipio, Municipio, idDepartamento) VALUES ((@conteo+1), @pMunicipio, @pidDepartamento);
	SET @pmensaje = 'Registro Guardado';
END

/*
-----------------------------------------------------------------------------------------------------
*/

CREATE PROCEDURE [unah].[InsertarDatosDireccion] (
	 @pidMucicipio INT,
	 @pidDepartamento INT,
	 @pdescripcion VARCHAR(300),
	 @pmensaje VARCHAR(40) OUT
	 )
	-- Add the parameters for the stored procedure here

AS
BEGIN
	DECLARE @conteo INTEGER;
	SELECT @conteo=MAX(idDireccion)
	FROM unah.Direccion;

  
	INSERT INTO Direccion(idDireccion, idMucicipio, idDepartamento, descripcion) VALUES ((@conteo+1), @pidMucicipio, @pidDepartamento, @pdescripcion);
	SET @pmensaje = 'Registro Guardado';
END


/*
-----------------------------------------------------------------------------------------------------
*/

CREATE PROCEDURE [unah].[InsertarDatosCentroUniversitario] (
	 @pcentroUniversitario VARCHAR(70),
	 @psigla VARCHAR(10),
	 @pfechaFundacion DATE,
	 @pidDireccion INT,
	 @pmensaje VARCHAR(40) OUT
	 )
	-- Add the parameters for the stored procedure here

AS
BEGIN
	DECLARE @conteo INTEGER;
	SELECT @conteo=MAX(idCentro)
	FROM unah.CentroUniversitario;

  
	INSERT INTO CentroUniversitario(idCentro, centroUniversitario,sigla, fechaFundacion, idDireccion) VALUES ((@conteo+1), @pcentroUniversitario, @psigla, @pfechaFundacion, @pidDireccion);
	SET @pmensaje = 'Registro Guardado';
END
-------------------------------------------------------------------------------------------------------------
CREATE PROCEDURE [unah].[InsertarDatosEdificio](
			@pedificio VARCHAR(45),
			@pcodigoEdificio VARCHAR(10),
			@pfechaFundacion DATE,
			@pobservacion VARCHAR(45),
			@pidCentroUniversitario INT,
			@pmensaje VARCHAR(40) OUT
	)
AS
BEGIN
DECLARE @conteo INTEGER;
	SELECT @conteo=MAX(idEdificio)
	FROM unah.Edificio;

	INSERT INTO ProyectoSistemaMatricula.unah.Edificio(idEdificio, edificio, codigoEdificio, fechaFundacion, observacion, idCentroUniversitario) VALUES((@conteo+1), @pedificio, @pcodigoEdificio, @pfechaFundacion, @pobservacion, @pidCentroUniversitario)
	SET @pmensaje = 'Registro Guardado';												   
													  
END
-----------------------------------------------------------------------------------------

CREATE PROCEDURE [unah].[InsertarDatosAula](
			@pcodigoAula VARCHAR(10),
			@pcantidadMaximaEstudiante INT,
			@pobservacion VARCHAR(45),
			@pidEdificio INT,
			@pmensaje VARCHAR(40) OUT
	)
AS
BEGIN 
DECLARE @conteo INTEGER;
	SELECT @conteo=MAX(idAula)
	FROM unah.Aula;

	INSERT INTO ProyectoSistemaMatricula.unah.Aula(idAula, codigoAula, cantidadMaximaDeEstudiante, observacion, idEdificio) VALUES((@conteo+1), @pcodigoAula, @pcantidadMaximaEstudiante, @pobservacion, @pidEdificio)
	SET @pmensaje = 'Registro Guardado';												   
												   
END
----------------------------------------------------------------------------------------------------------------
	

CREATE PROCEDURE [unah].[InsertarDatosFacultad](
			@pfacultad VARCHAR(50),
			@pidEdificio INT,
			@pidCentroUniversitario INT,
			@pmensaje VARCHAR(40) OUT
	)
AS
BEGIN 
DECLARE @conteo INTEGER;
	SELECT @conteo=MAX(idFacultad)
	FROM unah.Facultad;

	INSERT INTO ProyectoSistemaMatricula.unah.Facultad(idFacultad,facultad, idEdificio, idCentroUniversitario) VALUES((@conteo+1), @pfacultad, @pidEdificio,  @pidCentroUniversitario)
	SET @pmensaje = 'Registro Guardado';											

END 




----------------------------------------


CREATE PROCEDURE [unah].[InsertarDatosGruposEtnico](
			@pdescripcion VARCHAR(15),
			@pmensaje VARCHAR(40) OUT
	)
AS
BEGIN 
   DECLARE @conteo INTEGER;
	SELECT @conteo=MAX(idFacultad)
	FROM unah.Facultad;

	INSERT INTO ProyectoSistemaMatricula.unah.GruposEtnico(idGrupoEtnico, descripcion) VALUES ((@conteo+1), @pdescripcion)
	SET @pmensaje = 'Registro Guardado';	

END


