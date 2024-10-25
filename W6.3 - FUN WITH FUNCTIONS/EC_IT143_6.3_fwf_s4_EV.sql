--Q: How to extract first name from contact name?

--A: Well, here is your problem....
-- CustomerName = Alejandra Camino -> Alejandra
-- Google search "How to extract first name from combined name tsql stack overflow"
--https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

SELECT t.contactname
	, LEFT(t.contactname, CHARINDEX(' ',t.contactname + ' ') -1) AS first_name
	FROM [dbo].[t_w3_schools_customers] AS t
	ORDER BY 1
