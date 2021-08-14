CREATE PROCEDURE [dbo].ClientesInsertar
	@Cedula VARCHAR(50),
	@Nombre VARCHAR(250),
	@Apellidos VARCHAR(250),
	@Direccion VARCHAR(500),
	@FechaNacimiento DATE,
	@Telefono VARCHAR(50)
AS BEGIN
SET NOCOUNT ON

	BEGIN TRANSACTION TRASA

	BEGIN TRY

		
		INSERT INTO dbo.Clientes 
		(	       
	      Cedula,
		  Nombre,
		  Apellidos,
		  Direccion,
		  FechaNacimiento,
		  Telefono
		)
		VALUES
		(
  		  @Cedula,
	      @Nombre,
		  @Apellidos,
		  @Direccion,
		  @FechaNacimiento,
		  @Telefono
		)


		COMMIT TRANSACTION TRASA
		
		SELECT 0 AS CodeError, '' AS MsgError



	END TRY

	BEGIN CATCH
		SELECT 
				ERROR_NUMBER() AS CodeError
			,	ERROR_MESSAGE() AS MsgError

			ROLLBACK TRANSACTION TRASA
	END CATCH


END