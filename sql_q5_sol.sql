# Write a SQL query to find the number of bookings that happened in stoppage time.

SELECT COUNT(*)
FROM euro_cup_2016.player_booked b
WHERE b.booking_time > b.play_half*45;
