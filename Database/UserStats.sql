CREATE TABLE [dbo].[UserStats]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Date] DATETIME NULL,
	[AVGDamage] INT NOT NULL,
	[Accuracy] FLOAT NOT NULL,
	[Winrate] FLOAT NOT NULL,
	[Matches] INT NOT NULL,
	[AVGExp] FLOAT NOT NULL,
	[UserId] INT NOT NULL, 
    CONSTRAINT [FK_StatUser] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]), 
    CONSTRAINT [FK_Date] FOREIGN KEY ([Date]) REFERENCES [Date]([PK_Дата]),
)
