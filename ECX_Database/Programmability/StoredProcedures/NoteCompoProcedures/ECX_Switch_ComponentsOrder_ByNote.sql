CREATE PROCEDURE [dbo].[ECX_Switch_ComponentsOrder_ByNote]
	@note_id INT,
	@component1_id INT,
	@component2_id INT
AS
BEGIN
	
	DECLARE @order_compo1 INT = (SELECT [Order] FROM [NoteComposition] WHERE [Note_ID] = @note_id AND [Component_ID] = @component1_id);
	DECLARE @order_compo2 INT = (SELECT [Order] FROM [NoteComposition] WHERE [Note_ID] = @note_id AND [Component_ID] = @component2_id);

	UPDATE [NoteComposition]
	SET [Order] = @order_compo2
	WHERE [Component_ID] = @component1_id;

	UPDATE [NoteComposition]
	SET [Order] = @order_compo1
	WHERE [Component_ID] = @component2_id;

END