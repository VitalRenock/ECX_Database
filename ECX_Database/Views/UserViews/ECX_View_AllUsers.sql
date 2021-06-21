CREATE VIEW [dbo].[ECX_View_AllUsers]
AS 
	SELECT 
		[Email], 
		[Password], 
		[Nickname], 
		[Lastname],
		[Firstname]
	FROM [User];