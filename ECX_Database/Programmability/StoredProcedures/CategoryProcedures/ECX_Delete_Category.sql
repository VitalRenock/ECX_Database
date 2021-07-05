CREATE PROCEDURE [dbo].[ECX_Delete_Category]
	@category_id INT
AS
BEGIN

	IF(EXISTS(SELECT * FROM [Category] WHERE [ID] = @category_id))
	BEGIN

		DELETE FROM [Category] WHERE [ID] = @category_id;

	END

END