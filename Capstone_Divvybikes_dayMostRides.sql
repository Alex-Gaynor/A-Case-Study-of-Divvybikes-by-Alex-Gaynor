--This query gets the month, then all weekdays with rides and counts
--the member types that ride on each of the days.

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.Dec_2022_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

UNION ALL

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.Jan_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

UNION ALL

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.Feb_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

UNION ALL

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.Mar_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

UNION ALL

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.Apr_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

UNION ALL

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.May_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

UNION ALL

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.Jun_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

UNION ALL

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.Jul_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

UNION ALL

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.Aug_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

UNION ALL

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.Sep_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

UNION ALL

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.Oct_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

UNION ALL

SELECT 
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS mon,
  wk_day, 
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals 
FROM 
  `capstone-bikeshare-409900.divvyClean.Nov_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration < 5000
GROUP BY wk_day, mon

