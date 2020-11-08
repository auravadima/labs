CREATE TABLE [dbo].[UserStats]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Date] Date,
	[AVGDamage] INT,
	[Accuracy] FLOAT,
	[Winrate] FLOAT,
	[Matches] INT,
	[AVGExp] FLOAT,
	[UserId] INT, 
    CONSTRAINT [FK_StatUser] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]),
)
