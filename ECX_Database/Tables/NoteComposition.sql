CREATE TABLE [dbo].[NoteComposition]
(
	-- Base
	[ID] INT NOT NULL IDENTITY,

	-- Foreign Keys
	[Note_ID] INT NOT NULL,
	[Component_ID] INT NOT NULL,

	-- Constraints
    CONSTRAINT [PK_NoteComposition] PRIMARY KEY ([ID]),
	CONSTRAINT [FK_NoteComposition_Note] FOREIGN KEY ([Note_ID]) REFERENCES [Note]([ID]),
	CONSTRAINT [FK_NoteComposition_Component] FOREIGN KEY ([Component_ID]) REFERENCES [Component]([ID])
);