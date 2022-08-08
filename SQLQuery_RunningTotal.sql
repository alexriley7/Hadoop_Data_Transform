--SUM RunningTotal for Unit_Price

SELECT  

  --Stock_Item ,End_Of_Month, Unit_Price, DATE_MONTH

  SUM (Unit_Price) OVER (ORDER BY End_Of_Month) AS RunningPriceTotal


  FROM `charming-mile-355610.1.fact_consolidate` ;


--AVG RunningPrice For Unit_Price


SELECT  

  --Stock_Item ,End_Of_Month, Unit_Price, DATE_MONTH

  AVG (Unit_Price) OVER (ORDER BY End_Of_Month) AS RunningPriceTotal


  FROM `charming-mile-355610.1.fact_consolidate`;