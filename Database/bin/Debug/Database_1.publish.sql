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
PRINT N'Выполняется удаление [dbo].[FK_ShellWeapon]...';


GO
ALTER TABLE [dbo].[Shells] DROP CONSTRAINT [FK_ShellWeapon];


GO
PRINT N'Выполняется запуск перестройки таблицы [dbo].[Shells]...';


GO
BEGIN TRANSACTION;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

SET XACT_ABORT ON;

CREATE TABLE [dbo].[tmp_ms_xx_Shells] (
    [Id]          INT NOT NULL,
    [Type]        INT NULL,
    [Penetration] INT NULL,
    [Speed]       INT NULL,
    [Velocity]    INT NULL,
    [Cost]        INT NULL,
    [WeaponId]    INT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

IF EXISTS (SELECT TOP 1 1 
           FROM   [dbo].[Shells])
    BEGIN
        INSERT INTO [dbo].[tmp_ms_xx_Shells] ([Id], [Type], [Penetration], [Speed], [Velocity], [WeaponId])
        SELECT   [Id],
                 [Type],
                 [Penetration],
                 [Speed],
                 [Velocity],
                 [WeaponId]
        FROM     [dbo].[Shells]
        ORDER BY [Id] ASC;
    END

DROP TABLE [dbo].[Shells];

EXECUTE sp_rename N'[dbo].[tmp_ms_xx_Shells]', N'Shells';

COMMIT TRANSACTION;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;


GO
PRINT N'Выполняется создание [dbo].[Operations]...';


GO
CREATE TABLE [dbo].[Operations] (
    [Id]     INT NOT NULL,
    [TYPE]   INT NULL,
    [Value]  INT NULL,
    [UserId] INT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[Users]...';


GO
CREATE TABLE [dbo].[Users] (
    [Id]       INT           NOT NULL,
    [Nickname] VARCHAR (120) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[FK_ShellWeapon]...';


GO
ALTER TABLE [dbo].[Shells] WITH NOCHECK
    ADD CONSTRAINT [FK_ShellWeapon] FOREIGN KEY ([WeaponId]) REFERENCES [dbo].[Weapons] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_OperationUser]...';


GO
ALTER TABLE [dbo].[Operations] WITH NOCHECK
    ADD CONSTRAINT [FK_OperationUser] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]);


GO
PRINT N'Существующие данные проверяются относительно вновь созданных ограничений';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[Shells] WITH CHECK CHECK CONSTRAINT [FK_ShellWeapon];

ALTER TABLE [dbo].[Operations] WITH CHECK CHECK CONSTRAINT [FK_OperationUser];


GO
PRINT N'Обновление завершено.';


GO
