CREATE TABLE [dbo].[Component]
(
	-- Base
	[ID] INT NOT NULL IDENTITY,
	[Title] NVARCHAR(200) NOT NULL,
	[Type] NVARCHAR(20) NOT NULL,

	-- Component
	[Content] NVARCHAR(MAX) NULL,
	[Description] NVARCHAR(MAX) NULL,
	[Url] NVARCHAR(200) NULL,

	-- Visibility System
	[Public] BIT DEFAULT 0,

    -- Active System (Disable = 0 / Enable = 1)
    [Enable] BIT DEFAULT 1,

	-- Review system
	[StateReview] NVARCHAR(12) DEFAULT 'Valid',
    [CommentaryReview] NVARCHAR(200) NULL,

	-- History System
    --[SysStartTime] DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL,
    --[SysEndTime] DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL,
    --PERIOD FOR SYSTEM_TIME ([SysStartTime], [SysEndTime]),

	-- Foreign Keys
	[User_ID] INT NOT NULL,
	[Category_ID] INT NOT NULL,

	-- Constraints
    CONSTRAINT [PK_Component] PRIMARY KEY ([ID]),
	CONSTRAINT [CK_Component_StateReview] CHECK ([StateReview] IN ('Valid', 'WaitReview', 'WaitVerification')),
	CONSTRAINT [FK_User_ID] FOREIGN KEY ([User_ID]) REFERENCES [User]([ID]),
	CONSTRAINT [FK_Category_ID] FOREIGN KEY ([Category_ID]) REFERENCES [Category]([ID])
)
--WITH (SYSTEM_VERSIONING = OFF);
--WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.Component_History, DATA_CONSISTENCY_CHECK = ON));