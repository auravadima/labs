CREATE TABLE [dbo].[TankStats]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Date] Date,
	[AVGDamage] INT,
	[Accuracy] FLOAT,
	[Winrate] FLOAT,
	[Matches] INT,
	[AVGExp] FLOAT,
	[TankId] INT, 
    CONSTRAINT [FK_StatTank] FOREIGN KEY ([TankId]) REFERENCES [Tanks]([Id]),
)
