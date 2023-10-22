with CTE as 
( SELECT app_id , sum(CASE when event_type = 'click' then 1 else 0  end ) as clicks,
   sum(CASE when event_type = 'impression' then 1 else 0 end ) as  impression
 FROM events
where EXTRACT(year from timestamp) = '2022'
GROUP BY app_id )

SELECT app_id , ROUND((100.0* clicks / impression),2) as ctr 
from CTE