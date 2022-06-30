SELECT name,
    a.balance
FROM user306
    JOIN (
        SELECT account,
            SUM(amount) AS balance
        FROM transactions306
        GROUP BY account
    ) as a ON user306.account = a.account
    AND a.balance > 10000;