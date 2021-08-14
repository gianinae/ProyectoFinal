CREATE PROCEDURE [dbo].[ProductoInsertar]
	@IdProducto INT,
	@Categoria varchar(250),
	@Nombre varchar(250),
	@CantDisponible varchar(250),
	@Caract varchar(250),
	@Estado BIT

AS BEGIN
SET NOCOUNT ON

	BEGIN TRANSACTION TRASA

	BEGIN TRY

		
		INSERT INTO dbo.Producto
		(	       
			IdProducto ,
			Categoria,
			Nombre,
			CantDisponible,
			Caract ,
			Estado
		)
		VALUES
		(
			@IdProducto ,
			@Categoria,
			@Nombre,
			@CantDisponible,
			@Caract ,
			@Estado
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