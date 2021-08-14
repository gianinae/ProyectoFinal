CREATE TABLE [dbo].[Clientes]
(
	Cedula VARCHAR(50) NOT NULL  CONSTRAINT PK_Clientes PRIMARY KEY CLUSTERED(Cedula)
	 , Nombre VARCHAR(250) NOT NULL
	 , Apellidos VARCHAR(250) NOT NULL
	 , Direccion VARCHAR(500) NOT NULL
	 , FechaNacimiento DATE NOT NULL CONSTRAINT DF_Clientes_FechaNacimiento default('2020-01-01')
	 , Telefono VARCHAR(50) NOT NULL
	
)
