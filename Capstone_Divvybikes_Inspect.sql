--Select column name, count, and group by.
SELECT
  --ride_id,-- COUNT(ride_id),
  --rideable_type, COUNT(rideable_type),
  started_at, COUNT(started_at)
  --ended_at, COUNT(ended_at),
  --start_station_name, COUNT(start_station_id),
  --end_station_name, COUNT(end_station_name),
  --member_casual, COUNT(member_casual)
FROM `capstone-bikeshare-409900.divvybikes.Dec_2022`
WHERE ride_id IS NULL
--WHERE rideable_type IS NULL
--WHERE started_at IS NULL
--WHERE ended_at IS NULL
--WHERE start_station_name IS NULL
--WHERE end_station_name IS NULL
--WHERE member_casual IS NULL
--GROUP BY ride_id
--GROUP BY rideable_type
GROUP BY started_at
--GROUP BY ended_at
--GROUP BY start_station_name
--GROUP BY end_station_name
--GROUP BY member_casual


