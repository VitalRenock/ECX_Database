CREATE TABLE [dbo].[Category]
(
	-- Base
	[ID] INT NOT NULL IDENTITY,
	[Name] NVARCHAR(20) NOT NULL,
	[Color] NVARCHAR(20) NOT NULL,
	[Short] NVARCHAR(6) NOT NULL,
	[Description] NVARCHAR(MAX) NOT NULL,

	-- Active System
    [Enable] BIT NOT NULL DEFAULT 1,

	-- Constraints
    CONSTRAINT [PK_Category] PRIMARY KEY ([Id]) 
);