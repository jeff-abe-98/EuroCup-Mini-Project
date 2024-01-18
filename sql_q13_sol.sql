# Write a SQL query to find all the defenders who scored a goal for their teams.

SELECT p.player_name, c.country_name
FROM euro_cup_2016.goal_details g
LEFT JOIN euro_cup_2016.player_mast p ON g.player_id = p.player_id
LEFT JOIN euro_cup_2016.soccer_country c ON p.team_id = c.country_id
WHERE p.posi_to_play = 'DF';