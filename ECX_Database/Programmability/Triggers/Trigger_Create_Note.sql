--CREATE TRIGGER [Trigger_Create_Note]
--	ON [dbo].[Note]
--	INSTEAD OF INSERT
--	AS
--	BEGIN

--		--DECLARE @parentNote_id INT;
--		--SET @parentNote_id = [ECX.TransformZeroToNull](inserted.[ParentNote_ID]);

--		--IF(inserted.[ParentNote_ID] = 0)
--		--BEGIN
	
--		--	SET @parentNote_id = NULL;

--		--END
--		--ELSE
--		--BEGIN

--		--	SET @parentNote_id = inserted.[ID];

--		--END
		
--			--SELECT [Title], [Public], [ECX_TransformZeroToNull](inserted.[ParentNote_ID]), [User_ID]
--			--FROM inserted;

--		--INSERT INTO [Note]([Title], [Public], [ParentNote_ID], [User_ID]) VALUES
--		----(
--		----);

--		INSERT INTO [Note]([Title], [Public], [ParentNote_ID], [User_ID]) VALUES
--		(
--			inserted.[Title], 
--			inserted.[Public],
--			dbo.[ECX_TransformZeroToNull](inserted.[ParentNote_ID]),
--			--@parentNote_id, 
--			inserted.[User_ID]
--		);

--	END
