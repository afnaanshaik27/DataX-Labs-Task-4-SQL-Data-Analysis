# DataX Labs Task 4 - SQL Data Analysis

## 📌 Project Overview

This project was completed as part of the **DataX Labs Internship – Task 4: SQL for Data Analysis**.

The objective of this task is to use SQL queries to extract, filter, aggregate, analyze, and organize structured e-commerce product data using **MySQL**.

The project demonstrates fundamental and intermediate SQL concepts including filtering, sorting, grouping, aggregate functions, NULL handling, subqueries, views, indexes, and joins.

---

## 🎯 Objective

To analyze an e-commerce product dataset using SQL and demonstrate the ability to:

* Retrieve data using `SELECT`
* Filter records using `WHERE`
* Sort results using `ORDER BY`
* Group data using `GROUP BY`
* Perform calculations using aggregate functions
* Handle NULL values
* Filter grouped results using `HAVING`
* Use subqueries
* Create and query views
* Create indexes for query optimization
* Perform `INNER JOIN`, `LEFT JOIN`, and `RIGHT JOIN`

---

## 🛠️ Tools & Technologies

* **MySQL 8.0**
* **MySQL Command Line Client**
* **SQL**
* **Windows CMD**
* **GitHub**

---

## 📂 Dataset

**Dataset:** `ecommerce_products_cleaned.csv`

The dataset contains e-commerce product information such as:

* Product ID
* Product UUID
* Product Title
* Brand
* Category
* Sub-category
* Actual Price
* Selling Price
* Average Rating
* Seller
* Stock Status
* Discount

The dataset contains **30,000 product records**.

---

## 🗄️ Database

The imported dataset was stored in the following MySQL table:

```sql
products_raw
```

The table contains the following columns:

```text
product_uuid
actual_price
selling_price
average_rating
brand
category
out_of_stock
product_id
seller
sub_category
title
discount
```

---

## 🔎 SQL Concepts Implemented

### 1. SELECT

Retrieved specific product information from the database.

```sql
SELECT 
    product_id,
    title,
    brand,
    category,
    selling_price,
    average_rating
FROM products_raw
LIMIT 10;
```

### 2. WHERE

Filtered products based on conditions such as average rating.

### 3. ORDER BY

Sorted products based on rating and other fields.

### 4. GROUP BY

Grouped products by category and calculated category-level statistics.

### 5. Aggregate Functions

Used:

* `COUNT()`
* `COUNT(DISTINCT)`
* `SUM()`
* `AVG()`
* `MIN()`
* `MAX()`

These were used to calculate product counts, brands, prices, and other summary statistics.

> Note: Since the dataset does not contain transaction-level revenue or customer/user information, `selling_price` is analyzed as product price data rather than actual revenue.

### 6. NULL Handling

Checked for missing values and used `COALESCE()` to replace NULL values with meaningful defaults.

### 7. HAVING

Used `HAVING` to filter grouped results, such as brands having at least 50 products.

### 8. Subquery

Used a subquery to identify products whose selling price was higher than the overall average selling price.

### 9. Views

Created the following analytical view:

```sql
category_analysis
```

The view provides:

* Product count by category
* Average selling price
* Average rating
* Number of out-of-stock products

### 10. Indexes

Created indexes on:

```sql
idx_category
idx_brand
```

These indexes demonstrate how frequently filtered columns can be indexed to improve query performance.

### 11. JOINs

Demonstrated three types of joins:

* `INNER JOIN`
* `LEFT JOIN`
* `RIGHT JOIN`

A `brand_summary` table was created to demonstrate the joins.

---

## 📊 Key Analysis

The SQL analysis provides insights into:

* Product distribution across categories
* Average selling prices by category
* Number of products and brands
* Product rating patterns
* Brands with larger product catalogs
* Products priced above the overall average
* Out-of-stock products by category
* Brand-level product counts

---

## 📸 Screenshots

Screenshots of the SQL queries and their outputs are included in the `screenshots` folder.

The screenshots cover:

1. Table structure
2. SELECT query
3. WHERE filtering
4. ORDER BY sorting
5. GROUP BY analysis
6. Aggregate functions
7. NULL handling
8. HAVING clause
9. Subquery
10. View analysis
11. Indexes
12. INNER JOIN
13. LEFT JOIN
14. RIGHT JOIN

---

## 📁 Project Structure

```text
DataX-Labs-Task-4-SQL-Data-Analysis/
│
├── ecommerce_products_cleaned.csv
├── task4_sql_analysis.sql
├── README.md
│
└── screenshots/
    ├── 01_table_structure.png
    ├── 02_select_query.png
    ├── 03_where_filter.png
    ├── 04_order_by.png
    ├── 05_group_by_category.png
    ├── 06_aggregate_functions.png
    ├── 07_null_handling.png
    ├── 08_having_clause.png
    ├── 09_subquery.png
    ├── 10_view_analysis.png
    ├── 11_indexes.png
    ├── 12_inner_join.png
    ├── 13_left_join.png
    └── 14_right_join.png
```

---

## ▶️ How to Run

### 1. Create/select the database

Open MySQL Command Line Client and select the required database.

### 2. Create the table

Create the `products_raw` table using the column structure documented in the SQL file.

### 3. Import the dataset

Load the CSV dataset into the table using MySQL's `LOAD DATA LOCAL INFILE` command.

### 4. Run the SQL queries

Open:

```text
task4_sql_analysis.sql
```

and execute the required queries in MySQL.

---

## 💡 Interview Questions Covered

### 1. What is the difference between WHERE and HAVING?

`WHERE` filters individual rows before grouping, while `HAVING` filters grouped results after `GROUP BY`.

### 2. What are the types of JOINs?

Common SQL joins include:

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN
* FULL OUTER JOIN

### 3. How do you calculate average revenue per user?

A typical query would be:

```sql
SELECT 
    SUM(revenue) / COUNT(DISTINCT user_id) AS avg_revenue_per_user
FROM transactions;
```

The current product dataset does not contain user or transaction-level revenue fields.

### 4. What are subqueries?

A subquery is a query nested inside another SQL query. It can be used to provide a value or set of values to the outer query.

### 5. How can SQL queries be optimized?

Common techniques include:

* Creating appropriate indexes
* Selecting only required columns
* Avoiding unnecessary calculations
* Filtering data efficiently
* Reviewing query execution plans

### 6. What is a View?

A view is a virtual table based on the result of a SQL query. It can simplify repeated analytical queries and provide a reusable representation of data.

### 7. How do you handle NULL values?

NULL values can be handled using techniques such as:

```sql
IS NULL
IS NOT NULL
COALESCE()
IFNULL()
```

---

## ✅ Deliverables

* SQL query file
* Cleaned e-commerce dataset
* SQL output screenshots
* Analytical view
* Indexes
* JOIN demonstrations
* GitHub repository documentation

---

## 👨‍💻 Author

**Afnaan Shaik**

Data Analytics | SQL | Python | Power BI | Excel

---

## 📌 Internship

**DataX Labs Internship – Task 4**

**Task:** SQL for Data Analysis
