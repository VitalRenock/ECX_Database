CREATE PROCEDURE [dbo].[ECX_GetAll_PublicComponents_ByNote]
	@note_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [NoteComposition] WHERE [Note_ID] = @note_id))
	BEGIN

		SELECT
			C.[ID],
			C.[Title],
			C.[Type],
			C.[Content],
			C.[Description],
			C.[Url],
			C.[Public],
			C.[User_ID],
			C.[Category_ID]
		FROM [NoteComposition] NC
		LEFT JOIN [Component] C ON C.[ID] = NC.[Component_ID]
		WHERE NC.[Note_ID] = @note_id
		AND C.[Enable] = 1
		AND C.[Public] = 1;

	END

END