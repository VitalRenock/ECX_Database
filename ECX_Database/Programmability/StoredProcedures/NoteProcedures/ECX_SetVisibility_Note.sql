CREATE PROCEDURE [dbo].[ECX_SetVisibility_Note]
	@note_id int,
	@isPublic BIT
AS
BEGIN
	
	IF(EXISTS(SELECT * FROM [Note] WHERE [ID] = @note_id))
	BEGIN
		
		UPDATE [Note] SET [Public] = @isPublic WHERE [ID] = @note_id
		
	END

END