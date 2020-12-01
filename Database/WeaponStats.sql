CREATE TABLE [dbo].[WeaponStats]
(
	[Id] INT NOT NULL PRIMARY KEY, 
	[Weight] INT NOT NULL,
	[Caliber] INT NOT NULL,
	[WeaponId] INT NOT NULL,
    CONSTRAINT [FK_Weapon] FOREIGN KEY ([WeaponId]) REFERENCES [Weapons]([Id]),

)
