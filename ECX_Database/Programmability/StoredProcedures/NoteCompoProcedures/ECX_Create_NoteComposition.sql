CREATE PROCEDURE [dbo].[ECX_Create_NoteComposition]
	@note_ID INT,
	@component_ID INT,
	@responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN

	BEGIN TRY

		INSERT INTO [NoteComposition]([Note_ID], [Component_ID]) VALUES
		(@note_ID, @component_ID);

		SET @responseMessage = 'Succes';

	END TRY

	BEGIN CATCH

		SET @responseMessage = ERROR_MESSAGE();

	END CATCH

END