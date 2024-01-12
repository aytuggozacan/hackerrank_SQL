SET @rowIndex := -1;
SELECT ROUND(AVG(t.LAT_N),4) 
FROM (SELECT @rowIndex:= @rowIndex+1 AS rowIndex, s.LAT_N 
      from STATION AS s 
      ORDER BY s.LAT_N) AS t
where t.rowIndex in (floor(@rowIndex/2), ceil(@rowIndex/2));
