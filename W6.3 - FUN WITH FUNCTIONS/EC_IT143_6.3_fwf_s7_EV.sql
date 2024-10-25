--Q: How to extract first name from contact name?

--A: Well, here is your problem....
-- CustomerName = Alejandra Camino -> Alejandra
-- Google search "How to extract first name from combined name tsql stack overflow"
--https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

WITH s1 -- Use a Common Table Expression and compare first_name to first_name2
	AS (SELECT t.contactname
		, LEFT(t.contactname, CHARINDEX(' ',t.contactname + ' ') -1) AS first_name
		, [dbo].[udf_parse_first_name](t.contactname) AS first_name2

		FROM [dbo].[t_w3_schools_customers] AS t)
	SELECT s1.*
	 FROM s1
	 WHERE s1.first_name <> s1.first_name2; --Expected result is 0 rows