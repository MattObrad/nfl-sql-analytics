# NFL SQL Analytics

This project focuses on analyzing NFL game data using SQL. The goal was to practice writing clear, readable SQL queries that answer real questions about game outcomes, scoring trends, and team performance.

This project builds directly on an existing NFL database that was populated from cleaned game-level data.

## What this project does
Using a MySQL database of NFL games, the SQL queries in this repository answer questions such as:
- How many games are in the dataset and which seasons are covered
- Which teams have the most wins
- How league scoring has changed over time
- Whether home teams win more often than away teams
- How margins of victory vary by season
- Head-to-head history between specific teams

## Data
The data used in this project comes from cleaned NFL game results stored in a MySQL database. Each row represents a single game and includes information such as:
- Season and week
- Home and away teams
- Final scores
- Winner
- Margin of victory
- Total points scored

The data was prepared and cleaned separately using Python before being loaded into the database.

## Tools used
- MySQL
- MySQL Workbench
- SQL (SELECT, WHERE, GROUP BY, CASE, aggregate functions)

This mirrors a common real-world analytics pipeline where data is cleaned, stored in a database, queried with SQL, and then visualized.
