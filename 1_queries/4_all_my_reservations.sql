SELECT properties.*, reservations.*, AVG(rating) AS average_rating
FROM properties
JOIN reservations ON properties.id = property_id
JOIN users ON guest_id = users.id
JOIN property_reviews ON property_reviews.guest_id = users.id
WHERE users.id = 1 AND end_date < NOW()::date
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;

/*
1_queries/4_all_my_reservations.sql
*/
