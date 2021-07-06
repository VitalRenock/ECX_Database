CREATE VIEW [dbo].[ECX_GetAll_Users]
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
	WHERE U.[Enable] = 1