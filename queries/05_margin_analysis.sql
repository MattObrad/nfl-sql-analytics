# Question:
## Has the average margin of victory changed over time?

USE nfl_analytics;

SELECT
  season,
  ROUND(AVG(ABS(margin)), 2) AS avg_margin_of_victory
FROM games_cleaned
WHERE margin IS NOT NULL
  AND margin <> 0
GROUP BY season
ORDER BY season;
