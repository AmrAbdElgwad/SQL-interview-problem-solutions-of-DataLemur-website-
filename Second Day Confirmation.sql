select  user_id 
FROM emails E 
join texts T
on E.email_id = T.email_id
where EXTRACT(day from action_date) - EXTRACT(day from signup_date) = 1 
and signup_action = 'Confirmed' ;