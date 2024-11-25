SELECT  * FROM main.data_jobs;


SELECT
	job_title,
	ROUND(salary / 12) AS salary_month,
	CASE 
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FT' THEN 'Full time'
	END AS employment_type
FROM
	main.data_jobs
ORDER BY
	employment_type,
	salary_month;


SELECT 
	* EXCLUDE company_size,
	CASE 
		WHEN company_size = 'S' THEN 'small'
		WHEN company_size = 'M' THEN 'medium'
		WHEN company_size = 'L' THEN 'large'
	END AS company_size
FROM
	main.data_jobs;


SELECT
	job_title,
	experience_level,
	salary_in_usd * 10.7 AS salary_in_sek
FROM
	main.data_jobs;


SELECT
	job_title,
	experience_level,
	ROUND(salary_in_usd * 10.7 / 12) AS salary_sek_month
FROM
	main.data_jobs;


SELECT *,
	CASE 
		WHEN salary_in_usd < 45000 THEN 'Low'
		WHEN salary_in_usd BETWEEN 45000 AND 100000 THEN 'Medium'
		WHEN salary_in_usd BETWEEN 100000 AND 200000 THEN 'High'
		WHEN salary_in_usd > 200000 THEN 'Insanely high'
	END AS salary_level
FROM main.data_jobs;


SELECT 
	job_title,
	CASE 
		WHEN employment_type = 'CT' THEN 'Contract'
		WHEN employment_type = 'FL' THEN 'Freelance'
		WHEN employment_type = 'PT' THEN 'Part time'
		WHEN employment_type = 'FT' THEN 'Full time'
	END AS employment_type,
	remote_ratio,
	ROUND(salary_in_usd * 10.7 /12) AS salary_monthly_sek,
	salary_in_usd * 10.7 AS salary_annual_sek,
	CASE 
		WHEN salary_in_usd < 45000 THEN 'Low'
		WHEN salary_in_usd BETWEEN 45000 AND 100000 THEN 'Medium'
		WHEN salary_in_usd BETWEEN 100000 AND 200000 THEN 'High'
		WHEN salary_in_usd > 200000 THEN 'Insanely high'
	END AS salary_level,
	CASE 
		WHEN company_size = 'S' THEN 'small'
		WHEN company_size = 'M' THEN 'medium'
		WHEN company_size = 'L' THEN 'large'
	END AS company_size
FROM main.data_jobs;
	
	
	
	
	
	
	