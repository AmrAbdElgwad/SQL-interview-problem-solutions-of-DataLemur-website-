SELECT city , count(*)
FROM trades T
join users U
on T.user_id = U.user_id 
where status = 'Completed'
GROUP BY city
ORDER BY COUNT(*) DESC
LIMIT 3;