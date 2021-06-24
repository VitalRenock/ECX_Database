CREATE TRIGGER [Trigger_Delete_Role]
ON [dbo].[Role]
INSTEAD OF DELETE
AS
BEGIN

	UPDATE [Role]
	SET
		[Enable] = 0
	WHERE [ID] = (SELECT [ID] FROM deleted)

END
