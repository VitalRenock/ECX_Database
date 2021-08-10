CREATE PROCEDURE [dbo].[ECX_Add_ComponentToNote]
	@note_ID INT,
	@component_ID INT
AS
BEGIN

	DECLARE @test INT = 0;

	IF(EXISTS(SELECT TOP 1 [Order] FROM [NoteComposition] WHERE [Note_ID] = @note_ID))
	BEGIN

		SET @test = (
			SELECT TOP 1 [Order] 
			FROM [NoteComposition] 
			WHERE [Note_ID] = @note_ID
			ORDER BY [Order] DESC
		) + 1;

	END

	INSERT INTO [NoteComposition]([Note_ID], [Component_ID], [Order]) 
	OUTPUT inserted.[ID]
	VALUES
	(
		@note_ID, 
		@component_ID,
		@test
	);

END