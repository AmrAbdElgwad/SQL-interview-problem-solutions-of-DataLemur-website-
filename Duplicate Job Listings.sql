with cte as(

SELECT *  , 
   RANK() over(PARTITION BY company_id, title, description ORDER BY job_id ) as rnk
   from job_listings)

select count(company_id) AS co_w_duplicate_jobs from cte where rnk >=2