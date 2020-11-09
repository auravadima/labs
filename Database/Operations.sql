CREATE TABLE [dbo].[Operations]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[TYPE] INT NOT NULL,
	[Value] INT NOT NULL,
	[UserId] INT NOT NULL, 
    CONSTRAINT [FK_OperationUser] FOREIGN KEY ([UserId]) REFERENCES [Users]([Id]),
)
