# Write a SQL query to find the number of matches that were won by a single point, but do not include matches decided by penalty shootout

with both_scores AS (
SELECT match_no, goal_score, LAG(goal_score) OVER(PARTITION BY match_no ORDER BY team_id) as other_team_score
FROM euro_cup_2016.match_details 
) 

SELECT COUNT(*)
FROM both_scores
WHERE ABS(other_team_score-goal_score) = 1