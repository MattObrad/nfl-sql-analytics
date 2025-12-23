# Question:
## How has league-wide scoring (average points per game) changed by season?

USE nfl_analytics;

SELECT
  season,
  ROUND(AVG(total_points), 2) AS avg_points_per_game
FROM games_cleaned
WHERE total_points IS NOT NULL
GROUP BY season
ORDER BY season;
