SELECT city, COUNT(reservations.*) AS total_reservations
FROM properties
JOIN reservations ON property_id = properties.id
GROUP BY city
ORDER BY total_reservations DESC

/*
1_queries/3_most_visited_cities.sql
*/
