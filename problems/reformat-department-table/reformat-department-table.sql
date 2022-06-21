SELECT * FROM girrafe.`department-table`;


SELECT id, 
	SUM(CASE WHEN month = 'jan' THEN revenue ELSE null END) AS Jan_Revenue,
	SUM(CASE WHEN month = 'feb' THEN revenue ELSE null END) AS Feb_Revenue,
	SUM(CASE WHEN month = 'mar' THEN revenue ELSE null END) AS Mar_Revenue,
	SUM(CASE WHEN month = 'apr' THEN revenue ELSE null END) AS Apr_Revenue
FROM girrafe.`department-table`
GROUP BY id
ORDER BY id;
