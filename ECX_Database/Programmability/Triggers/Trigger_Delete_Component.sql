CREATE TRIGGER [Trigger_Delete_Component]
ON [dbo].[Component]
INSTEAD OF DELETE
AS
BEGIN
	
	UPDATE [Component]
	SET
		[Enable] = 0
	WHERE [ID] = (SELECT [ID] FROM deleted);

END
