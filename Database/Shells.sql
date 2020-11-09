CREATE TABLE [dbo].[Shells]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Type] INT NOT NULL,
	[Penetration] INT NOT NULL,
	[Speed] INT NOT NULL,
	[Velocity] INT NOT NULL,
	[Cost] INT NOT NULL,
	[WeaponId] INT NOT NULL,
    CONSTRAINT [FK_ShellWeapon] FOREIGN KEY ([WeaponId]) REFERENCES [Weapons]([Id]),
)
