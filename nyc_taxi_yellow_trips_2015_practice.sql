--`bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2015` 

SELECT pickup_datetime, dropoff_datetime, passenger_count
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2015` 


SELECT pickup_datetime, dropoff_datetime, passenger_count, trip_distance
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2015` 
LIMIT 1000


SELECT *
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2015` 
WHERE vendor_id = '1'
LIMIT 1000


SELECT *
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2015` 
WHERE fare_amount >= 50
LIMIT 1000


SELECT 
	EXTRACT(HOUR FROM pickup_datetime) as hour,
	COUNT(*) AS trip_cnt
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2015` 
WHERE EXTRACT(MONTH FROM pickup_datetime) = 1
GROUP BY hour
ORDER BY hour


SELECT
	FORMAT_DATETIME("%u", pickup_datetime) as weekday,
    pickup_datetime
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2015` 
LIMIT 1000


SELECT
	FORMAT_DATETIME("%u", pickup_datetime) as weekday,
    COUNT(*) cnt
FROM `bigquery-public-data.new_york_taxi_trips.tlc_yellow_trips_2015` 
GROUP BY weekday
ORDER BY weekday
