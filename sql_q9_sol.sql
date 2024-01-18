# Write a SQL query to find the goalkeeper’s name and jersey number, playing for Germany, who played in Germany’s group stage matches.

SELECT player_name, jersey_no
FROM euro_cup_2016.player_mast
WHERE player_id IN (
SELECT DISTINCT player_gk
FROM euro_cup_2016.match_details md
LEFT JOIN euro_cup_2016.soccer_country c ON md.team_id = c.country_id
WHERE md.play_stage = 'G' AND c.country_abbr = 'GER');