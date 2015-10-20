CREATE TABLE [USR].[Users] (
    [IdUser]       NUMERIC (18) IDENTITY (1, 1) NOT NULL,
    [Username]     VARCHAR (20) NOT NULL,
    [Email]        VARCHAR (50) NOT NULL,
    [PasswordSalt] VARCHAR (32) NOT NULL,
    [Password]     VARCHAR (64) NOT NULL,
    [CreationDate] DATETIME     NOT NULL, 
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([IdUser] ASC)
);
GO

ALTER TABLE [USR].[Users] ADD CONSTRAINT UC_Usename UNIQUE (Username)
GO