CREATE TABLE [dbo].[Entregas]
(
	[NumeroEntrega] INT NOT NULL PRIMARY KEY, 
    [FechaEntrega] DATE NOT NULL  CONSTRAINT DF_FechaEntrega default('2020-01-01'), 
    [Pedido] INT NOT NULL, 
    [Provincia] INT NOT NULL
    CONSTRAINT FK_Provincia FOREIGN KEY(Provincia) REFERENCES dbo.Provincia(IdCatalogoProvincia), 
    [Canton] INT NOT NULL
    CONSTRAINT Fk_Canton FOREIGN KEY(Canton) REFERENCES dbo.Canton(IdCatalogoCanton), 
    [Distrito] INT NOT NULL
    CONSTRAINT Fk_Distrito FOREIGN KEY(Distrito) REFERENCES dbo.Distrito(IdCatalogoDistrito), 
    [Estado] BIT NOT NULL
)
