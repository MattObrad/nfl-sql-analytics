# Question: How many NFL games are in the dataset, and what seasons does it cover?

USE nfl_analytics;

SELECT
  COUNT(*) AS total_games,
  MIN(season) AS first_season,
  MAX(season) AS last_season
FROM games_cleaned;
