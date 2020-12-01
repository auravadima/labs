CREATE TABLE [dbo].[Weapons]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Type] INT NOT NULL,
	[Caliber] INT NOT NULL, 
	[TankId] INT NOt NULL,
    CONSTRAINT [FK_Tank] FOREIGN KEY ([TankId]) REFERENCES [Tanks]([Id]),

)
