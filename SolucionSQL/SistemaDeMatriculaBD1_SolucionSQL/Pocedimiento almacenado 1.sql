USE [ProyectoSistemaMatricula]
GO
/****** Object:  StoredProcedure [dbo].[InsertarDatosContinente]    Script Date: 04/04/2020 15:52:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[InsertarDatosContinente] (
	 @pContinente VARCHAR(45),
	 @pmensaje VARCHAR(40) OUT
	 )
	-- Add the parameters for the stored procedure here

AS
BEGIN
	DECLARE @conteo INTEGER;
	SELECT @conteo=COUNT(*)
	FROM Continente;

  
	INSERT INTO Continente (idContinente, Continente) VALUES ((@conteo+1), @pContinente);
	SET @pmensaje = 'Registro Guardado';
END