CREATE PROCEDURE [dbo].[ECX_SetVisibility_Component]
	@component_id int,
	@isPublic BIT
AS
BEGIN
	
	IF(EXISTS(SELECT * FROM [Component] WHERE [ID] = @component_id))
	BEGIN
		
		UPDATE [Component] 
		SET [Public] = @isPublic 
		WHERE [ID] = @component_id;
		
	END

END