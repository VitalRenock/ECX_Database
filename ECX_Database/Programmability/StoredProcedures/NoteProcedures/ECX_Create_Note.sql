CREATE PROCEDURE [dbo].[ECX_Create_Note]
	@title NVARCHAR(200),
	@public BIT,
	@parentNote_ID INT,
	@user_ID INT
AS
BEGIN

	INSERT INTO [Note]([Title], [Public], [ParentNote_ID], [User_ID]) VALUES
	(@title, @public, @parentNote_ID, @user_ID);

	return 1;

END