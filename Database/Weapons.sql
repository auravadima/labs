CREATE TABLE [dbo].[Weapons]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Type] INT,
	[Caliber] INT,
	[TankId] INT, 
    CONSTRAINT [FK_WeaponTank] FOREIGN KEY ([TankId]) REFERENCES [Tanks]([Id]),

)
