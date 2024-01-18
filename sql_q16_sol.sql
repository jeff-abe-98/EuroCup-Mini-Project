# Write a SQL query to find referees and the number of matches they worked in each venue.

SELECT r.referee_name, v.venue_name, COUNT(m.match_no) as matches
FROM euro_cup_2016.match_mast m
LEFT JOIN euro_cup_2016.soccer_venue v ON m.venue_id = v.venue_id
LEFT JOIN euro_cup_2016.referee_mast r ON m.referee_id = r.referee_id
GROUP BY r.referee_name, v.venue_name
ORDER BY r.referee_name, matches desc, v.venue_name
