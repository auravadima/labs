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
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET PAGE_VERIFY NONE,
                DISABLE_BROKER 
            WITH ROLLBACK IMMEDIATE;
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE (QUERY_CAPTURE_MODE = ALL, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 367), MAX_STORAGE_SIZE_MB = 100) 
            WITH ROLLBACK IMMEDIATE;
    END


GO
PRINT N'Выполняется создание [dbo].[Costs]...';


GO
CREATE TABLE [dbo].[Costs] (
    [Id]     INT  NOT NULL,
    [Date]   DATE NULL,
    [Value]  INT  NULL,
    [TankId] INT  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[Shells]...';


GO
CREATE TABLE [dbo].[Shells] (
    [Id]          INT NOT NULL,
    [Type]        INT NULL,
    [Penetration] INT NULL,
    [Speed]       INT NULL,
    [Velocity]    INT NULL,
    [WeaponId]    INT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[Tanks]...';


GO
CREATE TABLE [dbo].[Tanks] (
    [Id]   INT           NOT NULL,
    [Name] VARCHAR (120) NULL,
    [LVL]  INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[TTCs]...';


GO
CREATE TABLE [dbo].[TTCs] (
    [Id]          INT NOT NULL,
    [Clocking]    INT NULL,
    [Speed]       INT NULL,
    [Velocity]    INT NULL,
    [EnginePower] INT NULL,
    [Weight]      INT NULL,
    [TankId]      INT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[Weapons]...';


GO
CREATE TABLE [dbo].[Weapons] (
    [Id]      INT NOT NULL,
    [Type]    INT NULL,
    [Caliber] INT NULL,
    [TankId]  INT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Выполняется создание [dbo].[FK_CostTank]...';


GO
ALTER TABLE [dbo].[Costs] WITH NOCHECK
    ADD CONSTRAINT [FK_CostTank] FOREIGN KEY ([TankId]) REFERENCES [dbo].[Tanks] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_ShellWeapon]...';


GO
ALTER TABLE [dbo].[Shells] WITH NOCHECK
    ADD CONSTRAINT [FK_ShellWeapon] FOREIGN KEY ([WeaponId]) REFERENCES [dbo].[Weapons] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_TTCTank]...';


GO
ALTER TABLE [dbo].[TTCs] WITH NOCHECK
    ADD CONSTRAINT [FK_TTCTank] FOREIGN KEY ([TankId]) REFERENCES [dbo].[Tanks] ([Id]);


GO
PRINT N'Выполняется создание [dbo].[FK_WeaponTank]...';


GO
ALTER TABLE [dbo].[Weapons] WITH NOCHECK
    ADD CONSTRAINT [FK_WeaponTank] FOREIGN KEY ([TankId]) REFERENCES [dbo].[Tanks] ([Id]);


GO
PRINT N'Существующие данные проверяются относительно вновь созданных ограничений';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[Costs] WITH CHECK CHECK CONSTRAINT [FK_CostTank];

ALTER TABLE [dbo].[Shells] WITH CHECK CHECK CONSTRAINT [FK_ShellWeapon];

ALTER TABLE [dbo].[TTCs] WITH CHECK CHECK CONSTRAINT [FK_TTCTank];

ALTER TABLE [dbo].[Weapons] WITH CHECK CHECK CONSTRAINT [FK_WeaponTank];


GO
PRINT N'Обновление завершено.';


GO
