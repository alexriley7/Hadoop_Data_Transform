
--RunningTotal of Unit Price, Partitioned By Item Color

SELECT 
        DATE_TEMP
        ,Purchase_Key
        ,Stock_Item 
        ,Color
        ,Unit_Price

        ,SUM (Unit_Price) OVER (PARTITION BY Color ORDER BY Purchase_Key) AS RunningPriceTotal

  FROM `charming-mile-355610.1.fact_consolidate`  
  JOIN `charming-mile-355610.1.dates` 
  ON `charming-mile-355610.1.fact_consolidate`.DATE_TEMP = `charming-mile-355610.1.dates`.date_time

  WHERE Color <> '' AND Color <> 'Black';
