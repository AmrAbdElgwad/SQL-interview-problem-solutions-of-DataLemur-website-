SELECT   P.page_id
FROM pages p 
left join page_likes PL
on P.page_id = PL.page_id
where pl.user_id is NULL
ORDER BY page_id;
