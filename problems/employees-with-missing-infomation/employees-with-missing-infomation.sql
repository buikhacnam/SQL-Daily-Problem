SELECT e.employee_id
FROM employees e
WHERE e.employee_id NOT IN (
        SELECT employee_id
        FROM salaries
    )
UNION
SELECT s.employee_id
FROM salaries s
WHERE s.employee_id NOT IN (
        SELECT employee_id
        FROM employees
    )
ORDER BY 1 ASC;