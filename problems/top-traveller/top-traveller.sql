SELECT * FROM schedule.`user-ride`;

SELECT * FROM schedule.`user-travel`;


SELECT name, CASE WHEN SUM(distance) > 0 THEN SUM(distance) ELSE 0 END
FROM schedule.`user-travel`
LEFT JOIN schedule.`user-ride`
ON schedule.`user-travel`.id = schedule.`user-ride`.user_id
GROUP BY schedule.`user-ride`.user_id
ORDER BY SUM(distance) DESC, name ASC
;