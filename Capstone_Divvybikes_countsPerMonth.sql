--Get the number of rides for each rider type every month.
--Counts the number of each type of rider per month, with ride lengths
--within reasonable limits.

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Dec_2022_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr

UNION ALL

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Jan_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr

UNION ALL

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Feb_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr

UNION ALL

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Mar_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr

UNION ALL

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Apr_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr

UNION ALL

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.May_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr

UNION ALL

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Jun_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr

UNION ALL

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Jul_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr

UNION ALL

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Aug_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr

UNION ALL

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Sep_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr

UNION ALL

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Oct_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr

UNION ALL

SELECT
  CONCAT(EXTRACT(month FROM started_at), '/', EXTRACT(YEAR FROM started_at)) AS month_yr,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Nov_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, month_yr
ORDER BY month_yr

