# Question: Do home teams win more often than away teams?

USE nfl_analytics;

SELECT
  SUM(CASE WHEN winner = home_team THEN 1 ELSE 0 END) AS home_wins,
  SUM(CASE WHEN winner = away_team THEN 1 ELSE 0 END) AS away_wins,
  COUNT(*) AS total_non_tie_games,
  ROUND(
    100 * SUM(CASE WHEN winner = home_team THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS home_win_pct,
  ROUND(
    100 * SUM(CASE WHEN winner = away_team THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS away_win_pct
FROM games_cleaned
WHERE winner IS NOT NULL
  AND winner <> 'TIE';
