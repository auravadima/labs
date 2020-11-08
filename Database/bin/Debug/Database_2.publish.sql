/*
Скрипт развертывания для WOT

Этот код был создан программным средством.
Изменения, внесенные в этот файл, могут привести к неверному выполнению кода и будут потеряны
в случае его повторного формирования.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "WOT"
:setvar DefaultFilePrefix "WOT"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Проверьте режим SQLCMD и отключите выполнение скрипта, если режим SQLCMD не поддерживается.
Чтобы повторно включить скрипт после включения режима SQLCMD выполните следующую инструкцию:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'Для успешного выполнения этого скрипта должен быть включен режим SQLCMD.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Выполняется создание [dbo].[TankStats]...';


GO
CREATE TABLE [dbo].[TankStats] (
    [Id]        INT        NOT NULL,
    [Date]      DATE       NULL,
    [AVGDamage] INT        NULL,
    [Accuracy]  FLOAT (53) NULL,
    [Winrate]   FLOAT (53) NULL,
    [Matches]   INT        NULL,
    [AVGExp]    FLOAT (53) NULL,
    [TankId]    INT        NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[UserStats]...';


GO
CREATE TABLE [dbo].[UserStats] (
    [Id]        INT        NOT NULL,
    [Date]      DATE       NULL,
    [AVGDamage] INT        NULL,
    [Accuracy]  FLOAT (53) NULL,
    [Winrate]   FLOAT (53) NULL,
    [Matches]   INT        NULL,
    [AVGExp]    FLOAT (53) NULL,
    [UserId]    INT        NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[FK_StatTank]...';


GO
ALTER TABLE [dbo].[TankStats] WITH NOCHECK
    ADD CONSTRAINT [FK_StatTank] FOREIGN KEY ([TankId]) REFERENCES [dbo].[Tanks] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_StatUser]...';


GO
ALTER TABLE [dbo].[UserStats] WITH NOCHECK
    ADD CONSTRAINT [FK_StatUser] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]);


GO
PRINT N'Существующие данные проверяются относительно вновь созданных ограничений';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[TankStats] WITH CHECK CHECK CONSTRAINT [FK_StatTank];

ALTER TABLE [dbo].[UserStats] WITH CHECK CHECK CONSTRAINT [FK_StatUser];


GO
PRINT N'Обновление завершено.';


GO
