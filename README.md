# Superstore Sales Analysis — SQL & Power BI

## Project overview

This project analyzes the US Superstore sales dataset to understand revenue, profit, order performance, regional performance, product categories, customer segments, and discount impact. The work combines data preparation, SQL analysis, and an interactive Power BI dashboard.

## Business questions

- How much revenue and profit did the business generate?
- Which regions and product categories contribute most to revenue and profit?
- Which sub-categories are loss-making?
- How do customer segments perform?
- How are discounts associated with profitability?
- Which products generate the highest sales?

## Tools

- **Excel** — data preparation and cleaning
- **MySQL** — querying and business analysis
- **Power BI Desktop** — dashboard and visual reporting
- **CSV** — source and prepared datasets

## Dataset

- **Source:** Sample Superstore dataset (Kaggle; source attribution is recorded in the original project documentation).
- **Records in the included raw CSV:** 9,994 rows
- **Records in the included prepared CSV:** 9,994 rows
- **Columns:** 21, including order and shipping dates, customer and product details, region, category, sales, quantity, discount, and profit.

The included prepared CSV has no exact duplicate rows and no missing values according to a basic file-level check. The date columns are named `Order_Date_Fixed` and `Ship_Date_Fixed`; confirm the date parsing/locale in MySQL or Power BI when importing.

## Repository structure

```text
sql-powerBI project/
├── 1_raw_data/
│   └── Sample - Superstore.csv
├── 2_cleaned_data/
│   └── Superstore_cleaned.csv
├── 3_sql_queries/
│   └── sales_analysis_queries.sql
├── 4_DashBoard/
│   └── DashBoard_screenshot.png
├── insights_summary.md
├── README.md
└── sql-powerbi.pbix
```

The new, expanded companion document is `INSIGHTS_SUMMARY_NEW.md`. This README is the revised version; the original `README.md` is retained separately in the supplied project archive.

## Workflow

1. **Data preparation:** Start with the raw Superstore CSV and use the prepared CSV in `2_cleaned_data/` for analysis.
2. **SQL analysis:** Use the queries in `3_sql_queries/sales_analysis_queries.sql` to calculate overall KPIs, monthly sales, month-over-month change, top products, and regional performance.
3. **Power BI:** Open `sql-powerbi.pbix` and review the report. If Power BI asks for a data source, point it to `2_cleaned_data/Superstore_cleaned.csv`.

## Key results from the included prepared CSV

| Metric | Result |
|---|---:|
| Total sales | $2,297,201.07 |
| Total profit | $286,397.02 |
| Distinct orders | 5,009 |
| Average sales per order (total sales ÷ distinct orders) | $458.61 |
| Overall profit margin (profit ÷ sales) | 12.47% |

Additional regional, category, segment, sub-category, and product findings are documented in `INSIGHTS_SUMMARY_NEW.md`.

## Run the SQL analysis

1. Install MySQL Server and MySQL Workbench.
2. Create a database, for example: `CREATE DATABASE superstore_db;`
3. Import `2_cleaned_data/Superstore_cleaned.csv` into a table named `sales`.
4. Check the imported column names and data types. The SQL file uses names such as `Order_ID`, `Order_Date_Fixed`, `Product_Name`, `Sales`, and `Profit`; adjust the table schema or query identifiers if your import tool changes them.
5. Open and execute the relevant statements in `3_sql_queries/sales_analysis_queries.sql`.

**Note:** The SQL file contains exploratory statements as well as analysis queries (including `TRUNCATE TABLE sales` and `ALTER TABLE`). Review the script before running it on any database containing data you need to keep. Do not execute the `TRUNCATE` statement unless you intentionally want to empty that table.

## Open the Power BI report

1. Install Power BI Desktop.
2. Open `sql-powerbi.pbix`.
3. If the source path is unavailable, update the source to the included `2_cleaned_data/Superstore_cleaned.csv`.
4. Refresh the report and check that the visuals reconcile with the dataset.

## Skills demonstrated

Data cleaning, CSV handling, SQL querying, aggregation, `GROUP BY`, window functions (`LAG`), KPI calculation, business analysis, Power BI reporting, and data visualization.

## Data and interpretation notes

- The dataset represents US retail transactions and is commonly used as a sample/portfolio dataset; it is not evidence of work performed for a real client.
- The average sales per order shown here is calculated as total sales divided by 5,009 distinct order IDs. This differs from averaging individual transaction rows.
- Business explanations such as discounting or product mix are hypotheses suggested by patterns in the data, not proven causes.
- The prepared CSV contains 9,994 rows, so the earlier README statement of 9,694 cleaned rows has not been carried forward.

## Author

Add your name, GitHub profile, and any relevant links here. Describe your own contribution accurately.
