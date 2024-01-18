# Write a SQL query to find the match number for the game with the highest number of penalty shots, and which countries played that match.

SELECT match_no, 
		(SELECT GROUP_CONCAT(country_name) 
		FROM euro_cup_2016.match_details md 
			INNER JOIN euro_cup_2016.soccer_country c ON md.team_id = c.country_id
		WHERE md.match_no = penalty_shootout.match_no) AS countries
FROM euro_cup_2016.penalty_shootout
GROUP BY match_no
ORDER BY COUNT(kick_id) DESC
LIMIT 1
;