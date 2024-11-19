DESC;

SELECT * FROM data_jobs;

SELECT * FROM main.data_jobs;

SELECT * FROM salaries.main.data_jobs;


--Limit clause
SELECT * FROM main.data_jobs LIMIT 5;

SELECT
	work_year,
	job_title,
	salary_in_usd,
	company_location
FROM main.data_jobs;

SELECT * EXCLUDE (salary, work_year) FROM main.data_jobs;

SELECT DISTINCT employment_type FROM main.data_jobs;

SELECT DISTINCT experience_level FROM main.data_jobs;