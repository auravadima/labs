CREATE TABLE [dbo].[Costs]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Date] Date,
	[Value] INT,
	[TankId] INT, 
    CONSTRAINT [FK_CostTank] FOREIGN KEY ([TankId]) REFERENCES [Tanks]([Id]),
)
