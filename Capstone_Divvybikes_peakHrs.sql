--Find how many rides happen at each hour of the day for each month,
--for each member.

SELECT
  EXTRACT(hour FROM started_at) AS start_hour,
  COUNT(CASE member_casual WHEN 'member' THEN 1 ELSE NULL END) AS members,
  COUNT(CASE member_casual WHEN 'casual' THEN 1 ELSE NULL END) AS casuals
FROM `capstone-bikeshare-409900.divvyClean.Nov_2023_cleaned`
WHERE trip_duration > 0 AND trip_duration <= 5000
GROUP BY member_casual, start_hour
ORDER BY start_hour


