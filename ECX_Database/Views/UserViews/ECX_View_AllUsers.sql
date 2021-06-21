CREATE VIEW [dbo].[ECX_View_AllUsers]
AS 
	SELECT 
		U.[ID], 
		U.[Email], 
		U.[Nickname], 
		U.[Lastname], 
		U.[Firstname], 
		R.[Name]
	FROM [User] U
	LEFT JOIN [Role] R ON U.Role_ID = R.ID
