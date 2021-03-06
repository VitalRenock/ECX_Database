CREATE TABLE [dbo].[Note]
(
    -- Base
	[ID] INT NOT NULL IDENTITY,
    [Title] NVARCHAR(200) NOT NULL,

    -- Visibility System (Private = 0 / Public = 1)
    [Public] BIT DEFAULT 0,

    -- Active System (Disable = 0 / Enable = 1)
    [Enable] BIT DEFAULT 1,

    -- Review System
    [StateReview] NVARCHAR(12) DEFAULT 'Valid',
    [CommentaryReview] NVARCHAR(200) NULL,

    -- History System
    --[SysStartTime] DATETIME2 GENERATED ALWAYS AS ROW START NOT NULL,
    --[SysEndTime] DATETIME2 GENERATED ALWAYS AS ROW END NOT NULL,
    --PERIOD FOR SYSTEM_TIME ([SysStartTime], [SysEndTime]),

    -- Foreign Keys
    [ParentNote_ID] INT NULL,
    [User_ID] INT NOT NULL,
    [Category_ID] INT NOT NULL,

    -- Constraints
    CONSTRAINT [PK_Note_ID] PRIMARY KEY ([ID]), 
    CONSTRAINT [CK_Note_StateReview] CHECK ([StateReview] IN ('Valid', 'WaitReview', 'WaitVerification')),
    CONSTRAINT [FK_Note_Parent] FOREIGN KEY ([ParentNote_ID]) REFERENCES [Note]([ID]),
    CONSTRAINT [FK_Note_User] FOREIGN KEY ([User_ID]) REFERENCES [User]([ID]),
    CONSTRAINT [FK_Note_Category] FOREIGN KEY ([Category_ID]) REFERENCES [Category]([ID])
)
--WITH (SYSTEM_VERSIONING = OFF);
--WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE = dbo.Note_History, DATA_CONSISTENCY_CHECK = ON));