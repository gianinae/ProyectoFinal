CREATE TABLE [dbo].[Producto]
(
	[IdProducto] INT NOT NULL PRIMARY KEY, 
    [Categoria] VARCHAR(250) NOT NULL, 
    [Nombre] VARCHAR(250) NOT NULL, 
    [CantDisponible] VARCHAR(250) NOT NULL, 
    [Caract] VARCHAR(250) NOT NULL, 
    [Estado] BIT NOT NULL
)WITH (DATA_COMPRESSION = PAGE)
GO
