CREATE TABLE `activity` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `activity_date` date DEFAULT NULL,
  `activity_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci


SELECT activity_date
    , COUNT(distinct user_id)
    , COUNT(*)
FROM Activity
WHERE datediff('2019-07-27', activity_date) < 30
GROUP BY activity_date;