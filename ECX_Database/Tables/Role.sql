CREATE TABLE [dbo].[Role]
(
	-- Base
	[ID] INT NOT NULL IDENTITY,
	[Name] NVARCHAR(20) NOT NULL,
	[Color] NVARCHAR(20) NOT NULL,
	[Description] NVARCHAR(200) NOT NULL,

	-- Constraints
    CONSTRAINT [PK_Role_ID] PRIMARY KEY ([ID])
);