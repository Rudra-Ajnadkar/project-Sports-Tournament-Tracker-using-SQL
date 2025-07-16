# project-Sports-Tournament-Tracker-using-SQL

##  Overview

This project analyzes IPL match data using SQL. It tracks team performance, player statistics, toss decisions, win margins, and match outcomes using real tournament data from Kaggle. SQL queries, views, and CTEs were used to uncover meaningful insights.

---

## Objectives

- Track and analyze IPL matches using structured SQL
- Build leaderboards, player stats, and win trends
- Visualize performance using queries and views
- Apply real-world data skills in a sports context

---

##  Tools Used

- MySQL Workbench
- Kaggle IPL `matches.csv` dataset
- SQL Views & CTEs
- Excel (data cleaning)

---

##  Schema Design

**Table:** `IPL_Matches`

| Column            | Type         |
|------------------|--------------|
| id               | INT (PK)     |
| season           | INT          |
| city             | VARCHAR      |
| match_date       | DATE         |
| team1, team2     | VARCHAR      |
| toss_winner      | VARCHAR      |
| toss_decision    | VARCHAR      |
| result           | VARCHAR      |
| dl_applied       | BOOLEAN      |
| winner           | VARCHAR      |
| win_by_runs      | INT          |
| win_by_wickets   | INT          |
| player_of_match  | VARCHAR      |
| venue, umpire1-3 | VARCHAR      |

---

## 📊 Key Insights

- **Most Wins**: Mumbai Indians (92)
- **Top Player**: CH Gayle (18 "Player of the Match" awards)
- **Toss Decision**: Field first (362 times)
- **Biggest Wins**: 146 runs, 10 wickets
- **Best Avg Win Margin**: Chennai Super Kings (22.72)
