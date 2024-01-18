# Write a SQL query to compute a list showing the number of substitutions that happened in various stages of play for the entire tournament

SELECT m.play_stage, COUNT(*) AS changes
FROM euro_cup_2016.player_in_out c
LEFT JOIN euro_cup_2016.match_mast m ON m.match_no = c.match_no
GROUP BY m.play_stage;