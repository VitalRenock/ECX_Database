﻿CREATE TABLE [dbo].[User]
(
    -- Base
	[ID] INT NOT NULL IDENTITY, 
    [Email] NVARCHAR(200) NOT NULL, 
    [Password] BINARY(64) NOT NULL, 
    [Nickname] NVARCHAR(20) NOT NULL,
    [Lastname] NVARCHAR(50) NULL, 
    [Firstname] NVARCHAR(50) NULL,

    -- Foreign Keys
    [Role_ID] INT NOT NULL,

    -- Constraints
    CONSTRAINT [PK_User] PRIMARY KEY ([ID]),
    CONSTRAINT [UK_User_Email] UNIQUE ([Email]),
    CONSTRAINT [UK_User_NickName] UNIQUE ([Nickname]),
    CONSTRAINT [FK_User_Role] FOREIGN KEY ([Role_ID]) REFERENCES [Role]([ID])
);