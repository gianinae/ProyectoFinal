CREATE TABLE [dbo].[Provincia]
(
	 IdCatalogoProvincia INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_Provincia PRIMARY KEY CLUSTERED(IdCatalogoProvincia),
	NombreCatalogoProvincia VARCHAR(50) NULL,
)
