CREATE TABLE [dbo].[Operations]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[TYPE] INT,
	[Value] INT,
	[UserId] INT, 
    CONSTRAINT [FK_OperationUser] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]),
)
