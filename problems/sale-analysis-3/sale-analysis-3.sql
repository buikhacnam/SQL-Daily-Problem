CREATE TABLE `sales1306` (
    `product_id` int DEFAULT NULL,
    `sale_date` date DEFAULT NULL,
    `quantity` int DEFAULT NULL,
    `id` int NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci 

CREATE TABLE `product1306` (
    `product_id` int DEFAULT NULL,
    `product_name` text,
    `unit_price` int DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci

-----------------------------------------------------------------------------------
SELECT p.product_id,
    product_name,
    sale_date
FROM product1306 p
    JOIN sales1306 ON p.product_id = sales1306.product_id
GROUP BY p.product_id
HAVING MAX(sale_date) <= ' 2019-03-31'
    AND MIN(sale_date) >= '2019-01-01';