# Write a SQL query to find the players, their jersey number, and playing club who were the goalkeepers for England in EURO Cup 2016.

SELECT p.player_name, p.jersey_no, p.playing_club
FROM euro_cup_2016.player_mast p
LEFT JOIN euro_cup_2016.soccer_country c ON p.team_id = c.country_id
WHERE p.posi_to_play = 'GK' AND c.country_abbr = 'ENG'