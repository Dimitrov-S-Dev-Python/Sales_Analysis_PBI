-- Cleansed DIM_Date Table --
SELECT
DateKey,
FullDateAlternateKey AS Date,
	--[DayNumberOfWeek]
EnglishDayNameOfWeek AS Day,
	--[SpanishDayNameOfWeek]
	--,[FrenchDayNameOfWeek]
	--,[DayNumberOfMonth]
	--,[DayNumberOfYear]
WeekNumberOfYear AS Week,
EnglishMonthName AS Month,
LEFT([EnglishMonthName], 3) AS MonthShort, -- Useful for front end date navigation and graphs
	--[SpanishMonthName]
	--,[FrenchMonthName]
MonthNumberOfYear AS MonthNo,
CalendarQuarter AS Quarter,
CalendarYear AS Year
	--[CalendarSemester]
	--,[FiscalQuarter]
	--,[FiscalYear]
	--,[FiscalSemester]
FROM
  DimDate
WHERE
	CalendarYear BETWEEN 2019 AND 2021

