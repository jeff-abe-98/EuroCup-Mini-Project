# Write a SQL query to find the number of captains who were also goalkeepers.

SELECT COUNT(DISTINCT p.player_id) AS goalie_captains
FROM euro_cup_2016.match_captain c
INNER JOIN euro_cup_2016.player_mast p ON c.player_captain = p.player_id
WHERE p.posi_to_play = 'GK';