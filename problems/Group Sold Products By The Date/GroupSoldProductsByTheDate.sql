SELECT sell_date,
    COUNT(*) as num_sold,
    group_concat(product) as products
FROM activities
GROUP BY sell_date;


SELECT sell_date,
    COUNT(DISTINCT product) as num_sold,
    group_concat(product) as products
FROM activities
GROUP BY sell_date;


SELECT sell_date,
    COUNT(DISTINCT product) as num_sold,
    group_concat(DISTINCT product) as products
FROM activities
GROUP BY sell_date;


SELECT sell_date,
    COUNT(DISTINCT product) as num_sold,
    group_concat(DISTINCT product GROUP BY product) as products
FROM activities
GROUP BY sell_date;