--Q: How to extract first name from contact name?

--A: Well, here is your problem....
-- CustomerName = Alejandra Camino -> Alejandra

SELECT t.contactname
	FROM [dbo].[t_w3_schools_customers] AS t
	ORDER BY 1
