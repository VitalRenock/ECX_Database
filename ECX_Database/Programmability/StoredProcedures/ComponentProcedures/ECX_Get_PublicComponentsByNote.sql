CREATE PROCEDURE [dbo].[ECX_Get_PublicComponentsByNote]
	@note_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [NoteComposition] WHERE [Note_ID] = @note_id))
	BEGIN

		SELECT
			C.[ID],
			C.[Title],
			C.[Content],
			C.[Short],
			C.[Description],
			C.[Url],
			C.[Public],
			C.[User_ID]
		FROM [NoteComposition] NC
		LEFT JOIN [Component] C ON C.[ID] = NC.[Component_ID]
		WHERE NC.[Note_ID] = @note_id
		AND C.[Enable] = 1
		AND C.[Public] = 1;

	END

END