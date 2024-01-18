# Write a SQL query to find the country where the most assistant referees come from, and the count of the assistant referees.

SELECT c.country_name, COUNT(a.ass_ref_id) as n_asst_refs
FROM euro_cup_2016.asst_referee_mast a
LEFT JOIN euro_cup_2016.soccer_country c ON a.country_id = c.country_id
GROUP BY c.country_name
ORDER BY n_asst_refs DESC
LIMIT 1
;