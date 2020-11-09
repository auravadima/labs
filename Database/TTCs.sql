CREATE TABLE [dbo].[TTCs]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Clocking] INT NOT NULL,
	[Speed] INT NOT NULL,
	[Velocity] INT NOT NULL,
	[EnginePower] INT NOT NULL,
	[Weight] INT NOT NULL,
	[TankId] INT NOT NULL, 
    CONSTRAINT [FK_TTCTank] FOREIGN KEY ([TankId]) REFERENCES [Tanks]([Id])
)
