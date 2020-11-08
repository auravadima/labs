CREATE TABLE [dbo].[Shells]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Type] INT,
	[Penetration] INT,
	[Speed] INT,
	[Velocity] INT,
	[Cost] INT,
	[WeaponId] INT,
    CONSTRAINT [FK_ShellWeapon] FOREIGN KEY ([WeaponId]) REFERENCES [Weapons]([Id]),
)
