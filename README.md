# SQL Mastery for Data Analytics & Business Intelligence

![Status](https://img.shields.io/badge/Status-In%20Progress-yellow)
![SQL](https://img.shields.io/badge/SQL-SQL%20Server-blue)
![Learning](https://img.shields.io/badge/Learning-Udemy-purple)

This repository documents my learning journey through the Udemy course **SQL Mastery for Data Analytics and Business Intelligence** by **Baraa Khatib Salkini (Data With Baraa)**.

The purpose of this repository is to track my progress, organize my SQL notes and exercises, and build a reference that I can reuse in future **Data Analysis**, **Business Intelligence**, and **Business Analysis** projects.

## Course

- **Course:** SQL Mastery for Data Analytics and Business Intelligence
- **Instructor:** Baraa Khatib Salkini
- **Platform:** Udemy
- **Main DBMS:** Microsoft SQL Server
- **Tool:** SQL Server Management Studio (SSMS)
- **Course link:** https://www.udemy.com/course/sql-mastery-for-data-analytics-and-business-intelligence/
- **Status:** In Progress

## Learning Objectives

By completing this course, I want to strengthen my ability to:

- Query relational databases with SQL
- Filter, sort, group, and aggregate data
- Clean and transform data
- Work with dates, strings, and NULL values
- Combine multiple tables using JOINs
- Combine query results using SET operators
- Use aggregate and window functions
- Build ranking and analytical queries
- Write subqueries and Common Table Expressions (CTEs)
- Perform Exploratory Data Analysis (EDA) using SQL
- Translate business questions into SQL queries
- Extract insights and KPIs for decision-making
- Write cleaner, more efficient analytical SQL

---

# Progress Tracker

> To update progress, replace `[ ]` with `[x]` after completing a milestone.

**Overall progress:** `2 / 18 milestones completed`

## 1. Introduction to SQL

- [X] Course introduction
- [X] Course roadmap and resources
- [X] Understand what SQL is
- [X] Understand databases and DBMS
- [X] Understand relational databases
- [X] Understand the data analytics process with SQL
- [X] Review SQL command categories
- [X] Set up SQL Server
- [X] Set up SQL Server Management Studio (SSMS)
- [X] Load and explore the course databases

### Key concepts

`SQL` `Database` `DBMS` `RDBMS` `SQL Server` `SSMS`

---

## 2. SELECT Queries

- [X] SELECT & FROM
- [X] WHERE
- [X] ORDER BY
- [X] GROUP BY
- [X] HAVING
- [X] DISTINCT
- [X] TOP
- [X] Aliases
- [X] Understand SQL coding order and SQL execution order

### Key concepts

```sql
SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
```

---

## 3. Filtering Data

- [X] Comparison operators
- [X] AND
- [X] OR
- [ ] NOT
- [ ] BETWEEN
- [ ] IN / NOT IN
- [ ] LIKE
- [ ] Wildcards `%` and `_`
- [ ] Combine multiple filtering conditions

### Practice goal

Write queries that answer business questions by filtering only the relevant records.

---

## 4. String Functions

- [ ] CONCAT
- [ ] UPPER
- [ ] LOWER
- [ ] TRIM
- [ ] REPLACE
- [ ] LEN
- [ ] LEFT
- [ ] RIGHT
- [ ] SUBSTRING
- [ ] Apply string functions for data cleaning

### Practice goal

Clean inconsistent text fields and create new descriptive columns.

---

## 5. Date & Time Functions

- [ ] DAY
- [ ] MONTH
- [ ] YEAR
- [ ] DATEPART
- [ ] DATENAME
- [ ] DATETRUNC
- [ ] EOMONTH
- [ ] FORMAT
- [ ] CONVERT
- [ ] CAST
- [ ] DATEADD
- [ ] DATEDIFF
- [ ] ISDATE
- [ ] Aggregate data by date periods

### Practice goal

Analyze sales or transactions by year, quarter, month, and day.

---

## 6. NULL Functions

- [ ] Understand NULL
- [ ] IS NULL
- [ ] IS NOT NULL
- [ ] ISNULL
- [ ] COALESCE
- [ ] NULLIF
- [ ] NULL vs empty string
- [ ] Handle NULLs in calculations
- [ ] Handle NULLs in aggregations
- [ ] Handle NULLs in joins

### Practice goal

Prevent missing values from producing misleading analytical results.

---

## 7. CASE WHEN

- [ ] Understand CASE syntax
- [ ] Categorize data
- [ ] Map codes to readable values
- [ ] Handle NULL values with CASE
- [ ] Create conditional calculations
- [ ] Create conditional aggregations

### Example

```sql
CASE
    WHEN sales >= 1000 THEN 'High'
    WHEN sales >= 500 THEN 'Medium'
    ELSE 'Low'
END AS sales_category
```

---

## 8. SQL JOINs

- [ ] INNER JOIN
- [ ] LEFT JOIN
- [ ] RIGHT JOIN
- [ ] FULL JOIN
- [ ] CROSS JOIN
- [ ] LEFT ANTI JOIN
- [ ] RIGHT ANTI JOIN
- [ ] FULL ANTI JOIN
- [ ] Join multiple tables
- [ ] Choose the appropriate JOIN for a business question

### Practice goal

Combine customers, orders, products, employees, or other related tables into useful analytical datasets.

---

## 9. SQL SET Operators

- [ ] UNION
- [ ] UNION ALL
- [ ] INTERSECT
- [ ] EXCEPT
- [ ] Understand SET operator rules
- [ ] Combine similar datasets
- [ ] Understand duplicate handling

### Practice goal

Combine rows returned by multiple compatible queries.

---

## 10. Window Functions — Fundamentals

- [ ] Understand window functions
- [ ] Compare window functions vs GROUP BY
- [ ] OVER()
- [ ] PARTITION BY
- [ ] ORDER BY inside OVER()
- [ ] Window frames
- [ ] ROWS
- [ ] UNBOUNDED PRECEDING
- [ ] CURRENT ROW
- [ ] Understand window function rules

### Practice goal

Perform analytical calculations without losing row-level detail.

---

## 11. Window Aggregate Functions

- [ ] COUNT() OVER()
- [ ] SUM() OVER()
- [ ] AVG() OVER()
- [ ] MIN() OVER()
- [ ] MAX() OVER()
- [ ] Running totals
- [ ] Moving calculations
- [ ] Partitioned aggregations

### Example

```sql
SUM(sales) OVER (
    PARTITION BY customer_id
    ORDER BY order_date
) AS running_sales
```

---

## 12. Window Ranking Functions

- [ ] ROW_NUMBER()
- [ ] RANK()
- [ ] DENSE_RANK()
- [ ] NTILE()
- [ ] Top-N analysis
- [ ] Rank within groups
- [ ] Understand ties in ranking

### Practice goal

Rank customers, products, employees, or sales within meaningful business groups.

---

## 13. Window Value Functions

- [ ] LAG()
- [ ] LEAD()
- [ ] FIRST_VALUE()
- [ ] LAST_VALUE()
- [ ] Compare current vs previous values
- [ ] Calculate period-over-period changes
- [ ] Analyze trends

### Practice goal

Use previous and next rows to identify changes and trends in business data.

---

## 14. Subqueries

- [ ] Understand subqueries
- [ ] Scalar subqueries
- [ ] Subqueries in WHERE
- [ ] Subqueries in FROM
- [ ] Subqueries in SELECT
- [ ] Nested queries
- [ ] Correlated subqueries
- [ ] EXISTS / NOT EXISTS

### Practice goal

Break complex analytical questions into smaller SQL queries.

---

## 15. Common Table Expressions — CTEs

- [ ] Understand WITH syntax
- [ ] Build a simple CTE
- [ ] Use multiple CTEs
- [ ] Chain transformations
- [ ] Recursive CTEs
- [ ] Compare CTEs and subqueries
- [ ] Improve readability of complex queries

### Example

```sql
WITH customer_sales AS (
    SELECT
        customer_id,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM customer_sales;
```

---

## 16. Exploratory Data Analysis with SQL

- [ ] Explore database structure
- [ ] Explore dimensions
- [ ] Explore measures
- [ ] Identify date ranges
- [ ] Analyze distributions
- [ ] Calculate KPIs
- [ ] Analyze customers
- [ ] Analyze products
- [ ] Analyze sales
- [ ] Detect patterns and anomalies
- [ ] Translate business questions into SQL

### Questions to answer

- What are the main business KPIs?
- Which products generate the most revenue?
- Who are the highest-value customers?
- How do sales change over time?
- Which categories or segments perform best?
- Are there unusual values or trends in the data?

---

## 17. Advanced SQL Analytics

- [ ] Running totals
- [ ] Moving averages
- [ ] Year-over-year analysis
- [ ] Month-over-month analysis
- [ ] Part-to-whole analysis
- [ ] Customer segmentation
- [ ] Product segmentation
- [ ] Performance comparison
- [ ] Trend analysis
- [ ] Advanced business KPIs
- [ ] Query optimization practice

---

## 18. Final Review & Portfolio Preparation

- [ ] Review SQL fundamentals
- [ ] Review JOINs
- [ ] Review aggregations
- [ ] Review window functions
- [ ] Review subqueries
- [ ] Review CTEs
- [ ] Complete the EDA project
- [ ] Complete advanced analytics exercises
- [ ] Clean repository structure
- [ ] Add comments and documentation
- [ ] Add project screenshots/results if useful
- [ ] Publish final SQL projects to GitHub
- [ ] Add completed projects to my portfolio
- [ ] Complete the Udemy course

---

# SQL Skills Checklist

## Beginner

- [ ] SELECT
- [ ] WHERE
- [ ] ORDER BY
- [ ] DISTINCT
- [ ] TOP
- [ ] GROUP BY
- [ ] HAVING

## Intermediate

- [ ] String functions
- [ ] Date functions
- [ ] NULL handling
- [ ] CASE WHEN
- [ ] JOINs
- [ ] SET operators
- [ ] Aggregate functions

## Advanced

- [ ] Window functions
- [ ] PARTITION BY
- [ ] ROW_NUMBER
- [ ] RANK
- [ ] DENSE_RANK
- [ ] LAG
- [ ] LEAD
- [ ] Subqueries
- [ ] CTEs
- [ ] Recursive CTEs
- [ ] Advanced analytical queries
- [ ] Query optimization

---

# Practice Log

| Date | Topic | Exercise / Challenge | Status | Notes |
|---|---|---|---|---|
| YYYY-MM-DD | SELECT | Basic queries | ⬜ | |
| YYYY-MM-DD | JOINs | Combine customers and orders | ⬜ | |
| YYYY-MM-DD | Window Functions | Ranking products | ⬜ | |
| YYYY-MM-DD | CTEs | Customer sales analysis | ⬜ | |
| YYYY-MM-DD | EDA | Sales database exploration | ⬜ | |

---

# Projects

## Project 1 — SQL Exploratory Data Analysis

**Status:** Not Started

Objectives:

- Explore a real-world dataset
- Understand dimensions and measures
- Calculate business KPIs
- Analyze customers and products
- Identify trends and patterns
- Document insights clearly

Repository / Folder:

```text
projects/
└── exploratory-data-analysis/
```

---

## Project 2 — Advanced SQL Analytics

**Status:** Not Started

Objectives:

- Use window functions
- Perform ranking analysis
- Calculate running totals
- Analyze performance over time
- Segment customers or products
- Answer advanced business questions

Repository / Folder:

```text
projects/
└── advanced-data-analytics/
```

---

# Notes Structure

I plan to organize my learning materials using the following structure:

```text
sql-mastery/
│
├── README.md
│
├── notes/
│   ├── 01_sql_introduction.md
│   ├── 02_select_queries.md
│   ├── 03_filtering_data.md
│   ├── 04_string_functions.md
│   ├── 05_date_time_functions.md
│   ├── 06_null_functions.md
│   ├── 07_case_when.md
│   ├── 08_joins.md
│   ├── 09_set_operators.md
│   ├── 10_window_functions.md
│   ├── 11_subqueries.md
│   └── 12_ctes.md
│
├── exercises/
│   ├── basics/
│   ├── joins/
│   ├── window-functions/
│   ├── subqueries/
│   └── ctes/
│
├── projects/
│   ├── exploratory-data-analysis/
│   └── advanced-data-analytics/
│
└── sql/
    ├── practice_queries.sql
    └── challenges.sql
```

---

# Key Takeaways

I will use this section to record the most important lessons from the course.

### SQL Fundamentals

- Add notes here.

### Data Cleaning

- Add notes here.

### JOINs

- Add notes here.

### Window Functions

- Add notes here.

### Subqueries & CTEs

- Add notes here.

### SQL for Business Analysis

- Add notes here.

---

# Useful SQL Patterns

## Grouped aggregation

```sql
SELECT
    category,
    SUM(sales) AS total_sales
FROM orders
GROUP BY category;
```

## Ranking

```sql
SELECT
    product,
    sales,
    RANK() OVER (ORDER BY sales DESC) AS sales_rank
FROM products;
```

## Partitioned ranking

```sql
SELECT
    category,
    product,
    sales,
    ROW_NUMBER() OVER (
        PARTITION BY category
        ORDER BY sales DESC
    ) AS row_num
FROM products;
```

## CTE

```sql
WITH sales_summary AS (
    SELECT
        customer_id,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM sales_summary
ORDER BY total_sales DESC;
```

---

# Career Relevance

I am learning SQL as part of my development toward roles such as:

- Data Analyst
- Business Analyst
- Business Intelligence Analyst

My goal is not only to learn SQL syntax, but to become better at using data to:

1. Understand business problems
2. Ask relevant analytical questions
3. Extract the right data
4. Transform raw data into useful information
5. Identify trends and KPIs
6. Communicate insights
7. Support business decisions

---

# Progress Updates

| Milestone | Status |
|---|---|
| SQL Foundations | ⬜ |
| Data Filtering & Transformation | ⬜ |
| JOINs & SET Operators | ⬜ |
| Window Functions | ⬜ |
| Subqueries & CTEs | ⬜ |
| Exploratory Data Analysis | ⬜ |
| Advanced SQL Analytics | ⬜ |
| Course Completed | ⬜ |

---

# Acknowledgements

Course materials and learning path are based on:

**SQL Mastery for Data Analytics and Business Intelligence**  
Instructor: **Baraa Khatib Salkini — Data With Baraa**  
Platform: **Udemy**

This repository contains my personal notes, exercises, practice queries, and projects created while learning SQL.

---

## Last Updated

September 14, 2026
