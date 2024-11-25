SELECT COUNT(*) as data_engineers_amount FROM main.data_jobs
WHERE job_title = 'Data Engineer';


SELECT COUNT(DISTINCT job_title) as number_of_vacancies FROM main.data_jobs; 


SELECT
    salary_level,
    COUNT(*) AS amount
FROM (
    SELECT
        CASE
            WHEN salary_in_usd < 50000 THEN 'Low'
            WHEN salary_in_usd BETWEEN 50000 AND 150000 THEN 'Medium'
            WHEN salary_in_usd BETWEEN 150000 AND 300000 THEN 'High'
            WHEN salary_in_usd > 300000 THEN 'Insanely high'
        END AS salary_level
    FROM main.data_jobs
) AS categorized_data
GROUP BY salary_level;


SELECT
	experience_level,
	MEDIAN(salary_in_usd),
	ROUND(AVG(salary_in_usd))
FROM
	main.data_jobs
GROUP BY
	experience_level;
	

SELECT 
	job_title,
	MEDIAN(salary_in_usd) as median_lön
FROM main.data_jobs
GROUP BY job_title
ORDER BY median_lön DESC
LIMIT 10;


SELECT
    ROUND(COUNT(CASE WHEN remote_ratio = 100 THEN 1 END) * 100.0 / COUNT(*),2) AS fully_remote,
    ROUND(COUNT(CASE WHEN remote_ratio = 50 THEN 1 END) * 100.0 / COUNT(*),2) AS half_remote,
    ROUND(COUNT(CASE WHEN remote_ratio = 0 THEN 1 END) * 100.0 / COUNT(*),2) AS fully_not_remote
FROM
    main.data_jobs;


