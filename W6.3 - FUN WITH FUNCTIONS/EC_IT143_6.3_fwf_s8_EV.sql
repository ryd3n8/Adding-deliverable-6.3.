--Q: How to extract first name from contact name?

--A: Well, here is your problem....
-- CustomerName = Alejandra Camino -> Alejandra
-- Google search "How to extract first name from combined name tsql stack overflow"
--https://stackoverflow.com/questions/5145791/extracting-first-name-and-last-name

SELECT t.customerid
	, t.customername
	, t.contactname
	,[dbo].[udf_parse_first_name](t.contactname) AS ContactName_first_name
	, '' AS ContactName_last_name -- How to extract last name from Contact Name?
	, t.address
	, t.city
	, t.country
FROM [dbo].[t_w3_schools_customers] AS t
ORDER BY 1 ; 

	
