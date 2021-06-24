CREATE PROCEDURE [dbo].[ECX_Remove_ComponentToNote]
	@note_id INT,
	@component_id INT
AS
BEGIN
	
	IF(
		EXISTS(
			SELECT * 
			FROM [NoteComposition] 
			WHERE [Note_ID] = @note_id 
			AND [Component_ID] = @component_id
		)
	)
	BEGIN
		
		DELETE FROM [NoteComposition]
		WHERE [Note_ID] = @note_id
		AND [Component_ID] = @component_id;

	END

END