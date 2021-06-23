CREATE TRIGGER [Trigger_Delete_User]
	ON [dbo].[User]
	INSTEAD OF DELETE
	AS
	BEGIN

		PRINT('Trigger déclenché');

		UPDATE [User]
		SET [Enable] = 0
		WHERE [ID] = (SELECT [ID] FROM deleted);

	END