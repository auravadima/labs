CREATE TABLE [dbo].[ItemsInfo]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Cost] INT NOT NULL,
	[Bonus] INT NOT NULL, 
	[ItemId] INT NOT NULL,
    CONSTRAINT [FK_Item] FOREIGN KEY ([ItemId]) REFERENCES [Items]([Id]),
)
