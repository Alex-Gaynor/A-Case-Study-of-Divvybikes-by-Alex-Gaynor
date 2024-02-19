--Find the shortest, longest, and mean ride times per month.  Done for each user type.
--Union all tables to get the results for each consecutive month.  
--Same number,datatype, and order of columns selected in each table.
SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,  --Had to get creative with aggregation function to get month listed w/out error.
  MIN(trip_duration) AS min_dur,  --Minimum trip time in minutes.
  MAX(trip_duration) AS max_dur,  --Maximum trip time for month in minutes.
  AVG(trip_duration) AS avg_dur --Average trip time for this month in minutes.
FROM 
  `capstone-bikeshare-409900.divvyClean.Dec_2022_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'

UNION ALL

SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,
  MIN(trip_duration) AS min_dur,
  MAX(trip_duration) AS max_dur,
  AVG(trip_duration) AS avg_dur
FROM 
  `capstone-bikeshare-409900.divvyClean.Jan_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'

UNION ALL

SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,
  MIN(trip_duration) AS min_dur,
  MAX(trip_duration) AS max_dur,
  AVG(trip_duration) AS avg_dur
FROM 
  `capstone-bikeshare-409900.divvyClean.Feb_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'

UNION ALL

SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,
  MIN(trip_duration) AS min_dur,
  MAX(trip_duration) AS max_dur,
  AVG(trip_duration) AS avg_dur
FROM 
  `capstone-bikeshare-409900.divvyClean.Mar_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'

UNION ALL

SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,
  MIN(trip_duration) AS min_dur,
  MAX(trip_duration) AS max_dur,
  AVG(trip_duration) AS avg_dur
FROM 
  `capstone-bikeshare-409900.divvyClean.Apr_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'


UNION ALL

SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,
  MIN(trip_duration) AS min_dur,
  MAX(trip_duration) AS max_dur,
  AVG(trip_duration) AS avg_dur
FROM 
  `capstone-bikeshare-409900.divvyClean.May_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'

UNION ALL

SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,
  MIN(trip_duration) AS min_dur,
  MAX(trip_duration) AS max_dur,
  AVG(trip_duration) AS avg_dur
FROM 
  `capstone-bikeshare-409900.divvyClean.Jun_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'

UNION ALL

SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,
  MIN(trip_duration) AS min_dur,
  MAX(trip_duration) AS max_dur,
  AVG(trip_duration) AS avg_dur
FROM 
  `capstone-bikeshare-409900.divvyClean.Jul_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'

UNION ALL

SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,
  MIN(trip_duration) AS min_dur,
  MAX(trip_duration) AS max_dur,
  AVG(trip_duration) AS avg_dur
FROM 
  `capstone-bikeshare-409900.divvyClean.Aug_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'

UNION ALL

SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,
  MIN(trip_duration) AS min_dur,
  MAX(trip_duration) AS max_dur,
  AVG(trip_duration) AS avg_dur
FROM 
  `capstone-bikeshare-409900.divvyClean.Sep_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'

UNION ALL

SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,
  MIN(trip_duration) AS min_dur,
  MAX(trip_duration) AS max_dur,
  AVG(trip_duration) AS avg_dur
FROM 
  `capstone-bikeshare-409900.divvyClean.Oct_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'

UNION ALL

SELECT
  MIN(CONCAT(EXTRACT(year FROM started_at), '/', EXTRACT(month FROM started_at))) AS trip_month,
  MIN(trip_duration) AS min_dur,
  MAX(trip_duration) AS max_dur,
  AVG(trip_duration) AS avg_dur
FROM 
  `capstone-bikeshare-409900.divvyClean.Nov_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000 AND member_casual = 'member'

