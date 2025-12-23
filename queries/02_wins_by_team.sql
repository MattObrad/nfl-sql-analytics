# Question: Which teams have the most wins across all seasons?

USE nfl_analytics;

SELECT
  winner AS team,
  COUNT(*) AS total_wins
FROM games_cleaned
WHERE winner IS NOT NULL
  AND winner <> 'TIE'
GROUP BY winner
ORDER BY total_wins DESC;
