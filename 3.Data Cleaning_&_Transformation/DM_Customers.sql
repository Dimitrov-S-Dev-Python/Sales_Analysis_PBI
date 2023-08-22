-- Cleansed DIM_Customers Table --
SELECT
c.CustomerKey AS CustomerKey,
	--,[GeographyKey]
	--,[CustomerAlternateKey]
	--,[Title]
c. FirstName AS [First Name],
	--,[MiddleName]
c.LastName AS [Last Name],
c.FirstName + ' ' + c.LastName AS [Full Name],
	-- Combined First and Last Name
	--,[NameStyle]
	--,[BirthDate]
	--,[MaritalStatus]
	--,[Suffix]
CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
	--,[Gender]
	--,[EmailAddress]
	--,[YearlyIncome]
	--,[TotalChildren]
	--,[NumberChildrenAtHome]
	--,[EnglishEducation]
	--,[SpanishEducation]
	--,[FrenchEducation]
	--,[EnglishOccupation]
	--,[SpanishOccupation]
	--,[FrenchOccupation]
	--,[HouseOwnerFlag]
	--,[NumberCarsOwned]
	--,[AddressLine1]
	--,[AddressLine2]
	--,[Phone]
c.DateFirstPurchase AS DateFirstPurchase,
	--,[CommuteDistance]
g.city AS [Customer City] -- joined in Customer city from Geography table
FROM
	DimCustomer AS c
	JOIN DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY
	CustomerKey -- Order List by CustomerKey
