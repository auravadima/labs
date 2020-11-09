CREATE TABLE [dbo].[UserStats]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Date] Date NOT NULL,
	[AVGDamage] INT NOT NULL,
	[Accuracy] FLOAT NOT NULL,
	[Winrate] FLOAT NOT NULL,
	[Matches] INT NOT NULL,
	[AVGExp] FLOAT NOT NULL,
	[UserId] INT NOT NULL, 
    CONSTRAINT [FK_StatUser] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]),
)
