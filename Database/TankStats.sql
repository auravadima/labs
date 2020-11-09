CREATE TABLE [dbo].[TankStats]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Date] Date NOT NULL,
	[AVGDamage] INT NOT NULL,
	[Accuracy] FLOAT NOT NULL,
	[Winrate] FLOAT NOT NULL,
	[Matches] INT NOT NULL,
	[AVGExp] INT NOT NULL,
	[TankId] INT NOT NULL, 
    [Shots] INT NOT NULL, 
    [Penetrations] INT NOT NULL, 
    [Hits] INT NOT NULL, 
    [AVGLightDamage] INT NOT NULL, 
    [AVGBlock] INT NOT NULL, 
    CONSTRAINT [FK_StatTank] FOREIGN KEY ([TankId]) REFERENCES [Tanks]([Id]),
)
