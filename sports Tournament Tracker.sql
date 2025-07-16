create database  matche_dataset;
select * from maches;


-- Match Count by Season

SELECT season, COUNT(*) AS total_matches
FROM Maches
GROUP BY season;


-- Team with Most Wins

SELECT winner, COUNT(*) AS win_count
FROM Maches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY win_count DESC;


-- Toss Decision Trends

SELECT toss_decision, COUNT(*) AS count
FROM Maches
GROUP BY toss_decision;

-- Win Margin Insights

SELECT MAX(win_by_runs) AS biggest_win_by_runs,
       MAX(win_by_wickets) AS biggest_win_by_wickets
FROM Maches;

-- 🔸 Most "Player of the Match" Awards

SELECT player_of_match, COUNT(*) AS awards
FROM Maches
GROUP BY player_of_match
ORDER BY awards DESC
LIMIT 10;

-- Create a View for Leaderboard

CREATE VIEW TeamLeaderboard AS
SELECT winner AS team, COUNT(*) AS wins
FROM Maches
WHERE winner IS NOT NULL
GROUP BY winner
ORDER BY wins DESC;

SELECT * FROM TeamLeaderboard;


-- Use a CTE for Avg Win Margin by Team

WITH WinMargins AS (
    SELECT winner, AVG(win_by_runs + win_by_wickets) AS avg_win_margin
    FROM Maches
    WHERE winner IS NOT NULL
    GROUP BY winner
)
SELECT * FROM WinMargins
ORDER BY avg_win_margin DESC;










