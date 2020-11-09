CREATE TABLE [dbo].[Weapons]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Type] INT NOT NULL,
	[Caliber] INT NOT NULL,
	[TankId] INT NOT NULL, 
    CONSTRAINT [FK_WeaponTank] FOREIGN KEY ([TankId]) REFERENCES [Tanks]([Id]),

)
