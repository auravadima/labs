CREATE TABLE [dbo].[TTCs]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Clocking] INT,
	[Speed] INT,
	[Velocity] INT,
	[EnginePower] INT,
	[Weight] INT,
	[TankId] INT, 
    CONSTRAINT [FK_TTCTank] FOREIGN KEY ([TankId]) REFERENCES [Tanks]([Id])
)
