# Write a SQL query to find all available information about the players under contract to Liverpool F.C. playing for England in EURO Cup 2016.

SELECT p.player_id, p.jersey_no, p.player_name, p.dt_of_bir, p.age, p.playing_club, pos.position_desc
FROM euro_cup_2016.player_mast p
INNER JOIN euro_cup_2016.soccer_country c ON p.team_id=c.country_id
LEFT JOIN euro_cup_2016.playing_position pos ON p.posi_to_play=pos.position_id
WHERE c.country_abbr = 'ENG' AND p.playing_club = 'Liverpool'