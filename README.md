# MySQL JSON Array Practice

## 📌 Project Overview

This repository contains hands-on SQL practice focused on **JSON Arrays and JSON Functions in MySQL**. The project explores how to store multiple values in a single JSON column, retrieve specific elements, search for values, and perform advanced filtering using JSON functions.

The exercises are designed to strengthen MySQL fundamentals, improve query-writing skills, and develop a practical understanding of JSON data handling in relational databases.

## 🎯 Project Objectives

- Understand JSON data types and JSON array structures in MySQL.
- Create tables and insert JSON array data.
- Extract specific elements from JSON arrays.
- Calculate the number of elements in a JSON array.
- Search for values and identify their positions.
- Apply multiple conditions using JSON functions.
- Practice SQL filtering and data retrieval techniques.

## 🛠️ Technologies Used

- MySQL
- MySQL Workbench
- SQL
- JSON

## 📚 Concepts Covered

### 1. Table Creation and Data Insertion
- CREATE TABLE
- INSERT INTO
- AUTO_INCREMENT
- PRIMARY KEY
- JSON data type
- JSON_ARRAY()

### 2. JSON Functions
- JSON_EXTRACT()
- JSON_LENGTH()
- JSON_UNQUOTE()
- JSON_SEARCH()
- JSON_CONTAINS()

### 3. SQL Querying Techniques
- SELECT statements
- WHERE conditions
- AND operator
- Comparison operators
- Filtering JSON array values
- Extracting multiple JSON elements
- Advanced conditional queries

## 🔍 Key Learning Outcomes

Through this practice, I developed an understanding of how JSON arrays can be stored and accessed in MySQL.

I learned how to extract values using JSON paths, count array elements, remove JSON string quotes, search for specific values, and check whether a JSON array contains particular elements.

I also practiced combining JSON functions with SQL conditions to retrieve meaningful information from structured data.

## 📂 Repository Structure

```text
MySQL-JSON-Array-Practice/
│
├── JSON_Array_Practice.sql
└── README.md
```

## 💡 Example Query

Extract the first skill from a JSON array:

```sql
SELECT
    Name,
    JSON_EXTRACT(Skills, '$[0]') AS First_Skill
FROM JSON_Practice2;
```

Count the number of skills for each employee:

```sql
SELECT
    Name,
    JSON_LENGTH(Skills) AS Total_Skills
FROM JSON_Practice2;
```

Search for employees whose skills contain SQL:

```sql
SELECT
    Name,
    Skills
FROM JSON_Practice2
WHERE JSON_CONTAINS(Skills, '"SQL"');
```

## 🚀 Purpose

This repository represents my continuous learning and practical SQL practice as an aspiring Data Analyst.

I am strengthening my database querying skills by working with JSON data, exploring MySQL functions, and solving progressively advanced SQL exercises.

**Learning by practicing. Improving through consistency. Building a strong foundation in SQL and data analytics.**
