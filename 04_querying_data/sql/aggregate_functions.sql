SELECT
	MIN(salary_in_usd) AS min_salaray_usd,
	round(AVG(salary_in_usd)) AS mean_salary_usd,
	MEDIAN(salary_in_usd) AS median_salaray_usd,
	MAX(salary_in_usd) AS max_salaray_usd
FROM
	main.data_jobs;