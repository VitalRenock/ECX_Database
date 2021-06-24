﻿CREATE PROCEDURE [dbo].[ECX_Get_PublicUserComponents]
	@user_id int
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Component] WHERE [User_ID] = @user_id))
	BEGIN

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
		WHERE [User_ID] = @user_id
		AND [Enable] = 1
		AND [Public] = 1;

	END

END