CREATE TABLE [dbo].[Pedidos]
(
	[Codigo] INT NOT NULL IDENTITY(1,1) CONSTRAINT Agencia PRIMARY KEY CLUSTERED(Codigo), 
    [ClienteAso] VARCHAR(50) NOT NULL 
    CONSTRAINT FK_Cliente FOREIGN KEY(ClienteAso) REFERENCES dbo.Clientes(Cedula),
	  Estado BIT NOT NULL, 
    [FechaPedido] DATETIME NOT NULL  CONSTRAINT DF_FechaPedido default('2020-01-01'), 
    [Producto] VARCHAR(50) NOT NULL, 
    [Cantidad] FLOAT NOT NULL, 
    [Subtotal] FLOAT NOT NULL, 
    [Envio] VARCHAR(50) NOT NULL, 
    [Iva] FLOAT NOT NULL, 
    [Total] FLOAT NOT NULL
)
WITH (DATA_COMPRESSION = PAGE)
GO