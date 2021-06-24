CREATE PROCEDURE [dbo].[ECX_Delete_Component]
	@component_id INT
AS
BEGIN
	
	DELETE FROM [Component]
	WHERE [ID] = @component_id;

END