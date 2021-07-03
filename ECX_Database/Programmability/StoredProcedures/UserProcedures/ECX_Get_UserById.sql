CREATE PROCEDURE [dbo].[ECX_Get_UserById]
	@userId INT
AS
BEGIN

	SELECT 
		U.[ID], 
		U.[Email], 
		U.[Nickname], 
		U.[Lastname], 
		U.[Firstname], 
		R.[Name]
	FROM [User] U
	LEFT JOIN [Role] R ON U.Role_ID = R.ID
	WHERE U.[ID] = @userId
	AND U.[Enable] = 1;

END