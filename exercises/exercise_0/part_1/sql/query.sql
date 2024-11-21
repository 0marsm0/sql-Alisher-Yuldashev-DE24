SELECT * FROM main.hemnet;

SELECT COUNT(*) FROM main.hemnet;

SELECT * FROM main.hemnet
ORDER BY final_price DESC
LIMIT 5;


SELECT * FROM main.hemnet
ORDER BY final_price
LIMIT 5;


SELECT 
	MIN(final_price) as min_price,
	MEDIAN(final_price) as median_price,
	AVG(final_price) as avg_price,
	MAX(final_price) as max_price
FROM main.hemnet;


SELECT 
	MIN(price_per_area) as min_price_per_area,
	MEDIAN(price_per_area) as median_price_per_area,
	AVG(price_per_area) as avg_price_per_area,
	MAX(price_per_area) as max_price_per_area
FROM main.hemnet;


SELECT COUNT(DISTINCT commune) as commune_amount FROM main.hemnet;


SELECT 
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM main.hemnet)) AS percentage_above_10M
FROM main.hemnet
WHERE final_price > 10000000;
