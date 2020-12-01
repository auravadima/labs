CREATE TABLE [dbo].[ShellStats]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Penetration] INT NOT NULL,
	[Speed] INT NOT NULL,
	[Velocity] INT NOT NULL,
	[Cost] INT NOT NULL, 
	[ShellId] INT NOT NULL,
    CONSTRAINT [FK_Shell] FOREIGN KEY ([ShellId]) REFERENCES [Shells]([Id]),
)
