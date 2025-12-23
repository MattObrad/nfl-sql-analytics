# Question:
## What does the head-to-head history look like between two teams (Packers vs. Bears)?

USE nfl_analytics;

SELECT DISTINCT
  game_id,
  season,
  week,
  home_team,
  away_team,
  home_score,
  away_score,
  winner,
  ABS(margin) AS margin
FROM games_cleaned
WHERE (home_team = 'GB' AND away_team = 'CHI')
   OR (home_team = 'CHI' AND away_team = 'GB')
ORDER BY season, week;
