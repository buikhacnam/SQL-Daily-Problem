SELECT l.user_id,
    (
        SELECT MAX(time_stamp)
        FROM logins
        WHERE user_id = l.user_id
            AND time_stamp >= '2020-01-01 00:00:00'
            AND time_stamp <= '2020-12-31 23:59:59'
    ) AS last_stamp
FROM logins l
GROUP BY user_id
HAVING last_stamp IS NOT NULL
;