SELECT COUNT(*) AS cnt, company_name FROM cabs GROUP BY company_name HAVING COUNT(company_name) < 100 ORDER BY cnt DESC; 

SELECT ts, CASE WHEN description LIKE '%rain%' THEN 'Bad' WHEN description LIKE '%storm%' THEN 'Bad' ELSE 'Good' END AS weather_conditions FROM weather_records WHERE ts >= '2017-11-05 00:00' AND ts <= '2017-11-06 00:00';

SELECT COUNT(trips.trip_id) AS trips_amount, cabs.company_name AS company_name FROM trips INNER JOIN cabs ON trips.cab_id = cabs.cab_id WHERE trips.start_ts BETWEEN '2017-11-15 00:00' AND '2017-11-16 23:59' GROUP BY company_name ORDER BY trips_amount DESC; 
