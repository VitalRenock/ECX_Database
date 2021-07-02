CREATE PROCEDURE [dbo].[ECX_Create_Note]
	@title NVARCHAR(200),
	@category NVARCHAR(20),
	@public BIT,
	@parentNote_ID INT,
	@user_ID INT
AS
BEGIN

	INSERT INTO [Note]([Title], [Category], [Public], [ParentNote_ID], [User_ID]) 
	OUTPUT inserted.[ID]
	VALUES
	(
		@title, 
		@category, 
		@public, 
		@parentNote_ID, 
		@user_ID
	);

END