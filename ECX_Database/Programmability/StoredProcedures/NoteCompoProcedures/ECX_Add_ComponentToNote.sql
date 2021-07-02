CREATE PROCEDURE [dbo].[ECX_Add_ComponentToNote]
	@note_ID INT,
	@component_ID INT
AS
BEGIN

	INSERT INTO [NoteComposition]([Note_ID], [Component_ID]) 
	OUTPUT inserted.[ID]
	VALUES
	(
		@note_ID, 
		@component_ID
	);

END