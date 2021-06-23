CREATE FUNCTION [dbo].[ECX_TransformZeroToNull]
(
	@value INT
)
RETURNS INT
AS
BEGIN
	
	DECLARE @response INT;

	IF(@value = 0)
	BEGIN
	
		SET @response = NULL;

	END
	ELSE
	BEGIN

		SET @response = @value;

	END

	RETURN (@response);

END
