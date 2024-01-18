# Write a SQL query to find the highest number of foul cards given in one match.

WITH bookings_per_match AS
(
SELECT match_no, COUNT(*) AS bookings
FROM euro_cup_2016.player_booked
GROUP BY match_no
ORDER BY bookings DESC
)

SELECT MAX(bookings) as most_bookings
FROM bookings_per_match;