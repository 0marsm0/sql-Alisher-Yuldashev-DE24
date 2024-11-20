SELECT * FROM main.data_jobs dj;


SELECT
	COUNT(*) AS jobs_lower_than_50k
FROM
	main.data_jobs dj
WHERE
	salary_in_usd < 50000;
	

SELECT
	*
FROM
	main.data_jobs dj
WHERE
	experience_level  = 'EN';
	

SELECT
	MEDIAN(salary_in_usd) AS median_salary_in_usd
FROM
	main.data_jobs dj
WHERE
	experience_level  = 'EN';


SELECT
	MEDIAN(salary_in_usd) AS median_salary_in_usd
FROM
	main.data_jobs dj
WHERE
	experience_level  = 'EX';