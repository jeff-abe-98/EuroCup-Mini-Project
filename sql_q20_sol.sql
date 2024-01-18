# Write a SQL query to find the substitute players who came into the field in the first half of play, within a normal play schedule.

SELECT m.play_date, m.play_stage, p.player_name
FROM euro_cup_2016.player_in_out s
LEFT JOIN euro_cup_2016.player_mast p ON s.player_id = p.player_id AND s.in_out = 'I' 
LEFT JOIN euro_cup_2016.match_mast m ON s.match_no = m.match_no
WHERE s.in_out = 'I' AND s.play_half = 1 AND s.play_schedule = 'NT'