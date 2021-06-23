CREATE TRIGGER [Trigger_Delete_Note]
ON [dbo].[Note]
INSTEAD OF DELETE
AS
BEGIN

	UPDATE [Note] 
	SET [Enable] = 0
	WHERE [ID] = (SELECT [ID] FROM deleted);

END