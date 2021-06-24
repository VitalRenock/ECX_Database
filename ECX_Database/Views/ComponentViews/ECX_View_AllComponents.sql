CREATE VIEW [dbo].[ECX_View_AllComponents]
AS 
	SELECT 
		[ID],
		[Title],
		[Content],
		[Short],
		[Description],
		[Url],
		[Public],
		[User_ID]
	FROM [Component]
	WHERE [Enable] = 1;