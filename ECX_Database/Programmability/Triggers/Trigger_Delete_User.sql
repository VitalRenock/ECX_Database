CREATE TRIGGER [Trigger_Delete_User]
	ON [dbo].[User]
	INSTEAD OF DELETE
	AS
	BEGIN

		PRINT('Trigger déclenché');

		UPDATE [User]
		SET [IsActive] = 0
		WHERE [ID] = (SELECT [ID] FROM deleted);

	END
