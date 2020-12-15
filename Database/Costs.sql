CREATE TABLE [dbo].[Costs]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Date] Date NOT NULL,
	[Value] INT NOT NULL,
	[TankId] INT NOT NULL, 
    CONSTRAINT [FK_CostTank] FOREIGN KEY ([TankId]) REFERENCES [Tanks]([Id]),
)