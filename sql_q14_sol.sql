# Write a SQL query to find referees and the number of bookings they made for the entire tournament. Sort your answer by the number of bookings in descending order

SELECT r.referee_name, COUNT(*) AS bookings
FROM euro_cup_2016.player_booked b
LEFT JOIN euro_cup_2016.match_mast m ON b.match_no = m.match_no
LEFT JOIN euro_cup_2016.referee_mast r ON m.referee_id = r.referee_id
GROUP BY r.referee_name
ORDER BY bookings DESC;