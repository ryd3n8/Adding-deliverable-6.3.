CREATE TRIGGER trg_hello_world_last_mod on dbo.t_hello_world
AFTER UPDATE
AS

/*****************************************************************************************************************
NAME: dbo.trg_hello_world_last_mod
PURPOSE: Hello world - Last Modified By Trigger

MODIFICATION LOG:
Ver      Date           Author           Description
-----   ----------     -----------       -------------------------------------------------------------------------------
1.0     10/22/2024     Esau Velasquez    1. Built this script for EC IT143

RUNTIME:
1s

NOTES:
Keep track of the last modified data for each row in the table
******************************************************************************************************************/

	UPDATE dbo.t_hello_world
		SET
		   last_modified_date = GETDATE()
	WHERE my_message IN
	(
	      SELECT DISTINCT
		  my_message
		FROM Inserted
	); 