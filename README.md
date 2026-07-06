## Objective
Analyzed a real-world Netflix dataset using SQL to practice CTEs (Common Table Expressions), data cleaning, aggregate functions, and business-focused querying.

## Dataset
- Source: Netflix Movies and TV Shows dataset (Kaggle)
- Table: netflix_titles
- Columns: show_id, type, title, director, cast, country, date_added, release_year, rating, duration, listed_in, description

## Netflix Data Analysis — Business Questions Solved
1. Total count of Movies vs TV Shows
2. Top 5 countries producing the most content
3. Content distribution by rating (TV-MA, PG-13, etc.)
4. Total content released in 2021
5. Longest duration movie
6. Most active director (highest number of titles)
7. Total count of Documentaries genre
8. Titles with missing/empty country data (data quality check)

## Key SQL Concepts Used
- Common Table Expressions (CTE) using WITH clause
- Aggregate functions (COUNT, GROUP BY, ORDER BY)
- CAST() and data type conversion for cleaning text-based numeric data
- Filtering with WHERE, including NULL and empty string handling
- LIMIT for top-N queries

## Key Insights
- Movies significantly outnumber
