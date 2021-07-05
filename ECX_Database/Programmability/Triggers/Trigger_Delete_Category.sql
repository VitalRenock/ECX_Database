CREATE TRIGGER [Trigger_Delete_Category]
ON [dbo].[Category]
INSTEAD OF DELETE
AS
BEGIN

	UPDATE [Category] 
	SET [Enable] = 0
	WHERE [ID] = (SELECT [ID] FROM deleted);

END