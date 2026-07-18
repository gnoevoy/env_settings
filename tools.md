
-------------------------------------------------------------

EXCEL
Excel is suitable for small and medium analytical models, reports, calculations and manually maintained datasets.

Purpose:
- store and organize information in cells and tables
- perform calculations on individual values, ranges and arrays
- clean, transform, analyze and summarize data
- create charts, reports and dashboards (quite limited compare to Power BI)
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
- Power Query — import, clean, combine and transform data using M
- Power Pivot — relational data model, calculated columns and DAX measures
*Didn't you Solver and ToolPack

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
*combinations of functions and cell references could calculate almost anything
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
*Quite the same as pandas / pyspark , just need to google available functions to achieve results

-------------------------------------------------------------

POWER BI
Business Intelligence tool for transforming data, building data models, creating interactive dashboards, and performing analytical calculations.

Features
- Power Query – ETL tool for importing, cleaning, transforming, and combining data before loading it into the model.
- Data Model – tables, relationships, hierarchies, calculated columns, measures, and calculation groups.
- Table View – inspect data, configure columns, create calculated columns, sort, format, and manage relationships.
- Report View – build interactive reports using charts, tables, KPIs, slicers, drill-through, bookmarks, conditional formatting, and page/visual/report-level filters.
- DAX Query View – write raw DAX queries (DEFINE, EVALUATE) for debugging, testing measures, and exploring model data.

DAX - formula language for calculations and querying tabular models.
1. Filter Context – filters applied by visuals, slicers, relationships, and DAX expressions.
2. Row Context – current row during calculated columns and iterator functions (SUMX, FILTER, etc.).
3. Context Transition – CALCULATE converts row context into filter context.
4. Variables (VAR) – evaluated once, immutable, improve readability and performance.
5. Relationships & Cross Filtering – filter propagation between related tables, including inactive and many-to-many relationships.
6. Evaluation Context – understanding how filters and row context affect every calculation.

Model Features
1. Measures – reusable calculations evaluated at query time.
2. Calculated Columns – values computed once and stored in the model.
3. Calculated Tables – tables generated with DAX.
4. Calculation Groups – reusable calculation logic (YTD, MTD, Previous Year, etc.) applied to measures.
5. User Defined Functions (UDFs) – reusable custom DAX functions for expressions and table calculations.
6. DAX Query View – debugging and testing DAX with raw queries.

DAX Functions
- Aggregations: SUM, MIN, MAX, AVERAGE, COUNT, COUNTA, COUNTBLANK, COUNTROWS, DISTINCTCOUNT, DISTINCTCOUNTNOBLANK, SUMX, MINX, MAXX, AVERAGEX, COUNTX, CONCATENATEX
- Date & Time:  DATE, TODAY, NOW, YEAR, MONTH, DAY, WEEKDAY, WEEKNUM, DATEDIFF, EOMONTH, EDATE, YEARFRAC
- Filter & Context: CALCULATE, CALCULATETABLE, FILTER, ALL, ALLEXCEPT, ALLSELECTED, REMOVEFILTERS, KEEPFILTERS, VALUES, SELECTEDVALUE, LOOKUPVALUE
- Logical: IF, SWITCH, IFERROR, AND, OR, NOT, TRUE, FALSE, ISBLANK, ISEMPTY, ISINSCOPE, HASONEVALUE, HASONEFILTER
- Relationships: RELATED, RELATEDTABLE, USERELATIONSHIP, CROSSFILTER, ISCROSSFILTERED
- Table Functions: ADDCOLUMNS, SELECTCOLUMNS, SUMMARIZE, SUMMARIZECOLUMNS, GROUPBY, GENERATE, FILTERS, VALUES, DISTINCT, UNION, INTERSECT, EXCEPT, TOPN, ROW, TREATAS
- Time Intelligence: DATEADD, DATESBETWEEN, DATESINPERIOD, DATESYTD, DATESMTD, DATESQTD, TOTALYTD, TOTALMTD, TOTALQTD, FIRSTDATE, LASTDATE, PREVIOUSYEAR, PREVIOUSMONTH, PREVIOUSDAY, SAMEPERIODLASTYEAR
- Windows Functions: RANK, ROW_NUMBER, INDEX, OFFSET, WINDOW, ORDERBY, PARTITIONBY
- Visula Calculations: COLLAPSE, EXPAND, RUNNINGSUM, MOVINGAVERAGE, FIRST, LAST, NEXT, PREVIOUS, RANGE, RANK, ROWNUMBER
- Utility / Debugging: TOCSV 

This covers essentially everything needed for day-to-day Power BI development and around 95% of common DAX work.

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
- Views and indexes (doesnt you it regularly)

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

*My observations: difficult to pivot / unpivot tables, lack of regex, uncounvinient programming logic (like functions, loops, variables)
*dbt as enhancment for raw sql queries

-------------------------------------------------------------

DBT
A framework that enhances SQL by adding software engineering practices for developing, testing, documenting, and deploying data transformations.

Features:
- Version control with Git and development in a code editor 
- Built-in data quality tests (unique, not_null, relationships, accepted_values) and support for custom tests.
- Model references (ref()) and source references (source()) to manage dependencies between tables.
- Jinja templating: variables, loops, conditions, and reusable SQL generation.
- Macros: reusable functions/templates for common SQL logic.
- Seeds: load CSV files as database tables (constants, lookup/mapping tables).
- Materializations: define how a model is stored (view, table, incremental, ephemeral).
- Incremental models: process only new or changed data instead of rebuilding the entire table.
- Snapshots: track historical changes in source data (SCD Type 2) by storing previous versions with validity timestamps.
- Documentation & lineage: automatically generate project documentation and a dependency graph of models.
- Environment configuration: separate development, test, and production environments.

DBT Documentation: https://docs.getdbt.com/docs/introduction?version=2.0
*great tool for long-term project with many tables / calculations

-------------------------------------------------------------

Programming (Python) will be covered sooner wiht standart Software Engiinering tools 
Not a neccessity for Data Analytics 

(Python, Linux, Git, Docker, different libraries and concepts)
























