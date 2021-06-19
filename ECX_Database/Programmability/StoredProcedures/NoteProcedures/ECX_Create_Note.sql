CREATE PROCEDURE [dbo].[ECX_Create_Note]
	@title NVARCHAR(200),
	@public BIT,
	@parentNote_ID INT,
	@user_ID INT,
	@responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN

	BEGIN TRY

		INSERT INTO [Note]([Title], [Public], [ParentNote_ID], [User_ID]) VALUES
		(@title, @public, @parentNote_ID, @user_ID);

		SET @responseMessage = 'Succes';
	

	END TRY
	
	BEGIN CATCH

		SET @responseMessage = ERROR_MESSAGE();

	END CATCH

END