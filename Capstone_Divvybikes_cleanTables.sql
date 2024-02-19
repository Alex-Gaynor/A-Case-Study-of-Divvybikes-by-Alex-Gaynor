/*This query creates cleaned tables free of null values.  It gets all 
good rows of data and saves them to a table via a setting change, while 
also adding columns for trip duration in minutes as well as the day of 
the week (Sun = 1, Sat = 7).  With this, the table will be good to do 
analysis on.  This is done for all 12 months.
*/
SELECT DISTINCT *,
  TIMESTAMP_DIFF(ended_at, started_at, minute) AS trip_duration,
  EXTRACT(dayofweek FROM started_at) AS wk_day
FROM `capstone-bikeshare-409900.divvybikes.Dec_2022`
WHERE
  ride_id IS NOT NULL AND 
  rideable_type IS NOT NULL AND
  started_at IS NOT NULL AND
  ended_at IS NOT NULL AND
  start_station_name IS NOT NULL AND
  start_station_id IS NOT NULL AND
  end_station_id IS NOT NULL AND
  start_lat IS NOT NULL AND
  start_lng IS NOT NULL AND
  end_lat IS NOT NULL AND
  end_lng IS NOT NULL AND
  end_station_name IS NOT NULL AND
  member_casual IS NOT NULL



