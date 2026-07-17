
-------------------------------------------------------------

EXCEL
Excel is suitable for small and medium analytical models, reports, calculations and manually maintained datasets.

Purpose:
- store and organize information in cells and tables
- perform calculations on individual values, ranges and arrays
- clean, transform, analyze and summarize data
- create charts, reports and dashboards (quite limited compare to power bi)
- build planning, forecasting and financial models

Features:
- Formatting — fonts, colors, borders, number formats and styles
- Conditional Formatting — highlight cells based on rules or custom formulas
- Find & Replace — search and replace values
- Sorting & Filtering — organize and filter data by multiple criteria
- Data Validation — restrict or guide values entered into cells
- Tables — structured ranges with automatic formulas, formatting and expansion
- Named Ranges — assign names to cells, ranges, constants or formulas
- PivotTables — quickly group, aggregate, filter, sort, rank and compare data
- Charts — visualize data from ranges, tables or PivotTables
- What-If Analysis — Scenario Manager, Goal Seek and Data Tables
- Solver — optimize a result using variables and constraints (didnt touch)
- Analysis ToolPak — regression, statistics, histograms and other analysis tools
- Power Query — import, clean, combine and transform data using M
- Power Pivot — relational data model, calculated columns and DAX measures

Formulas:
- absolute & relative references with $ sign
- Range: A1:D10
- Table reference: Sales[Amount]
- Spilled array reference: F2#
- Dynamic array formulas are written in one cell and return results across multiple cells.

Functions:
1. Logical and errors: IF, IFS, SWITCH, AND, OR, NOT, IFERROR, IFNA, ISBLANK, ISNUMBER, ISTEXT, ISEVEN, ISODD
2. Lookup and reference: XLOOKUP, XMATCH, INDEX, MATCH, ROW, ROWS, COLUMN, COLUMNS, OFFSET, CHOOSE, TRANSPOSE
3. Text: LEFT, RIGHT, MID, LEN, TRIM, CLEAN, TEXT, VALUE, UPPER, LOWER, PROPER, SUBSTITUTE, REPLACE, TEXTJOIN, TEXTSPLIT, TEXTBEFORE, TEXTAFTER, regex functions
4. Math and aggregation: SUM, MIN, MAX, AVERAGE, COUNT, COUNTA, SUMIFS, COUNTIFS, AVERAGEIFS, SUMPRODUCT, SUBTOTAL, AGGREGATE, ROUND, MOD, ABS, RANK, SMALL, LARGE
5. Dynamic arrays: FILTER, UNIQUE, SORT, SORTBY, SEQUENCE, RANDARRAY, VSTACK, HSTACK, TAKE, DROP, TOCOL, TOROW, WRAPCOLS, WRAPROWS, CHOOSECOLS, CHOOSEROWS, EXPAND, GROUPBY, PIVOTBY
6. Lambda functions: LAMBDA, MAP, BYROW, BYCOL, SCAN, REDUCE, MAKEARRAY
7. Date and time: DATE, TODAY, NOW, YEAR, MONTH, DAY, WEEKDAY, WEEKNUM, EDATE, EOMONTH, DATEDIF, YEARFRAC, WORKDAY.INTL, NETWORKDAYS.INTL ...

*this basic set of features & function covers 95% of tasks in Excel.

-------------------------------------------------------------

POWER QUERY
ETL (Extract, Transform, Load) tool used to import, clean, reshape and prepare data before analysis.

Features:
- Connect to various data sources (files, folders, databases, APIs, web, cloud)
- Step-based transformations with full M code behind each step
- All possible data transformations: sort, filter, group, pivot/unpivot, merge, append and reshape data ...
- Handle missing values, duplicates and errors
- Data profiling tools (column quality, distribution, profile)
- Parameters for reusable values (constant variables)
- Reusable queries and custom functions

M Language:
Most transformations can be performed through the GUI.
GUI first → inspect generated M code → modify manually only when needed.

1. Data structures: list {}, record [], table, primitive values (text, numbers, dates, booleans)
2. Variables: let ... in
3. Conditional logic: if ... then ... else
4. Lambda functions: each or (x) => ...
5. Current value: _
6. Error handling: try ... otherwise

Power Query M Function Reference: https://learn.microsoft.com/en-us/powerquery-m/power-query-m-function-reference
* Quite the same as pandas / pyspark , just need to google available functions to achieve results

-------------------------------------------------------------

POWER BI

-------------------------------------------------------------

SQL
Query language used to manage and retrieve data from relational databases.

Purpose:
1. CRUD operations — create, read, update and delete data
2. Querying — retrieve, filter, transform and aggregate data

Data modeling:
- Tables (fact & dimension)
- Primary and foreign keys
- Relationships: one-to-one, one-to-many, many-to-many
- Views and indexes

Common Operations:
- Selecting columns and rows
- Filtering
- Sorting
- Joins
- Unions
- Aggregations
- Creating calculated columns
- Window calculations
- Subqueries and CTEs

Common Clauses:
- WITH ... AS (...) — Common Table Expression (temporary result)
- SELECT — choose columns and calculations
- FROM — source table(s)
- JOIN ... ON — combine tables
- WHERE — filter rows before aggregation
- GROUP BY — group rows
- HAVING — filter aggregated groups
- OVER(PARTITION BY ... ORDER BY ...) — window calculations
- AS — alias for columns or tables
- ORDER BY — sort results
- LIMIT / TOP / FETCH — limit returned rows

Logical Execution: 
WITH -> FROM -> JOIN -> WHERE -> GROUP BY -> HAVING -> SELECT -> WINDOW (OVER) -> ORDER BY -> LIMIT / TOP

Functions:
- Aggregations: SUM, AVG, COUNT, COUNT(DISTINCT), MIN, MAX, *
- Window (ranking): ROW_NUMBER, RANK, DENSE_RANK, NTILE
- Window (navigation): LAG, LEAD, FIRST_VALUE, LAST_VALUE, NTH_VALUE
- Logical: CASE, COALESCE, AND, OR, NOT, IN, BETWEEN, LIKE, IS NULL, IS NOT NULL, ISNULL ...
- String: CONCAT, SUBSTRING, LEFT, RIGHT, LENGTH/LEN, TRIM, LTRIM, RTRIM ...
- Numeric: ABS, ROUND, CEILING, FLOOR, POWER, SQRT, MOD, RAND
- Date & Time: CURRENT_DATE, CURRENT_TIMESTAMP, DATEADD, DATEDIFF, DATE_TRUNC, EXTRACT, YEAR, MONTH, DAY ... 

* simple and straighforward langauge, dbt as enhancment for raw SQL

-------------------------------------------------------------

DBT


-------------------------------------------------------------



Python
Git
Docker












