# Write a SQL query that returns the total number of goals scored by each position on each country’s team. Do not include positions which scored no goals.

SELECT c.country_name, pos.position_desc, COUNT(g.goal_id) as goals_scored
FROM euro_cup_2016.goal_details g
LEFT JOIN euro_cup_2016.player_mast p ON g.player_id = p.player_id
LEFT JOIN euro_cup_2016.playing_position pos ON p.posi_to_play = pos.position_id
LEFT JOIN euro_cup_2016.soccer_country c ON p.team_id = c.country_id
GROUP BY c.country_name, pos.position_desc
HAVING COUNT(g.goal_id) > 0
ORDER BY c.country_name, pos.position_desc;
