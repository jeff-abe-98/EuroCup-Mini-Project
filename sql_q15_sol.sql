# Write a SQL query to find the referees who booked the most number of players.

SELECT r.referee_name, COUNT(DISTINCT b.player_id) AS players_booked
FROM euro_cup_2016.player_booked b
LEFT JOIN euro_cup_2016.match_mast m ON b.match_no = m.match_no
LEFT JOIN euro_cup_2016.referee_mast r ON m.referee_id = r.referee_id
GROUP BY r.referee_name
ORDER BY players_booked DESC;