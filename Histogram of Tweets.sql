SELECT 
  tweets_num  AS tweet_bucket, 
  COUNT(user_id) AS users_num 
FROM (
    SELECT user_id ,count(tweet_id) as Tweets_num 
    FROM tweets
    where tweet_date  BETWEEN '2022-01-01' AND '2022-12-31' 
    GROUP BY user_id 
) AS total_tweets 

GROUP BY tweets_num;