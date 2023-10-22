SELECT EXTRACT(month from submit_date) mth , product_id , ROUND(AVG(stars),2)
FROM reviews
GROUP BY mth , product_id 
ORDER BY mth , product_id ;