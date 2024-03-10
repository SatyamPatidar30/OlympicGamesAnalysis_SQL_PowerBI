SELECT 
       [ID]
      ,[Name] AS 'Compitator Name' --Renamed column
      ,CASE WHEN Sex = 'M' THEN 'Male' ELSE 'Women' END AS Sex
      ,[Age]
	  , CASE 
	        WHEN [Age] < 18 THEN 'Under 18'
			WHEN [Age] BETWEEN 18 AND 25 THEN '18-25'
			WHEN [Age] BETWEEN 25 AND 30 THEN '25-30'
			WHEN [Age] < 30 THEN 'Over 30'
	   END AS [Age Grouping]
      ,[Height]
      ,[Weight]
      ,[NOC] AS 'Nation code' -- Explained Abbrevaition
	  --,CHARINDEX(' ', Games)-1 as 'Example 1'
	  --,CHARINDEX(' ', REVERSE(Games))-1 as 'Example 2'
	  ,LEFT(Games, CHARINDEX(' ', Games)-1) as Year -- Split column to isolate Year, based on space
	  ,RIGHT(Games, CHARINDEX(' ',REVERSE(Games))-1) as Season -- Split column to isolate Season, based on space
      --,[Games]
      --,[City]
      ,[Sport]
      ,[Event]
      ,CASE WHEN Medal = 'NA' THEN 'Not Registered' ELSE Medal End AS Medal --Replaced NA with Not Registered
  FROM [olympic_games].[dbo].[athletes_event_results]
  WHERE RIGHT(Games, CHARINDEX(' ',REVERSE(Games))-1) = 'summer' -- Where clause to isolate summer season
