SELECT emp_id, SUM(out_time - in_time) AS total_time
FROM employee1 
GROUP BY event_day, emp_id;