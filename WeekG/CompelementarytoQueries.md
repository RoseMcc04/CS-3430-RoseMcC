# Complementary to Queries

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [Virtual Table](#virtual-table)
2. [`WITH`](#with)
3. [`VIEW` (Virtual Table From a Query)](#view-virtual-table-from-a-query)
4. [`VIEW`](#view)
5. [Set Operations](#set-operations)
    1. [Set Operations - An Example](#index---an-example)
    2. [Set Operations - Basic Rules](#set-operations---basic-rules)
    3. [Full `OUTER JOIN`](#full-outer-join)
6. [`INDEX`](#index)
    1. [`INDEX` - An Example](#index---an-example)
    2. [Create `INDEX`](#create-index)
    3. [Check `INDEX`](#check-index)
    4. [Delete `INDEX`](#delete-index)
    5. [How to Choose an Index](#how-to-choose-an-index)

## Virtual Table

- `WITH` *virtual_table (field_list)* `AS` *(query)*
    - If we need to invoke a nested query repeatedly
- `VIEW`
    - If we want to store a nested query

## `WITH`

- `WITH` clause defines a temporary table that will be used only once in the query and then dropped
```sql
WITH BIGDEPTS (Dno) AS (SELECT Dno
                        FROM EMPLOYEE
                        GROUP BY Dno
                        HAVING COUNT(*) > 5)
SELECT Dno, COUNT(*)
FROM EMPLOYEE
WHERE Salary > 40000 AND Dno IN BIGDEPTS
GROUP BY Dno;
```

## `VIEW` (Virtual Table From a Query)

- A view is a single table that is derived from other tables or views
- A view is considered to be a virtual table, in constrast to base tables
- `VIEW` does NOT take up additional storage space
```sql
CREATE VIEW view_name
AS
query
```

## `VIEW`

- We use `VIEW` as a table
- Be careful!
    - All modifications like insert, update, and delete on a `VIEW` will also work on base tables

## Set Operations

| Column A | Column B | Operation | Result |
|---|---|---|---|
| 1, 2, 3 | 3, 4, 5 | UNION | 1, 2, 3, 4, 5 |
| 1, 2, 3 | 3, 4, 5 | UNION ALL | 1, 2, 3, 3, 4, 5 |
| 1, 2, 3 | 3, 4, 5 | INTERSECT | 3 |
| 1, 2, 3 | 3, 4, 5 | EXCEPT | 1, 2 |

### Set Operations - An Example

```sql
SELECT col FROM t1
UNION ALL
SELECT col FROM t2
ORDER BY col;
```

### Set Operations - Basic Rules

- The result sets of all the queries must be the same number of columns
- In all result sets, the data type of each column must be well-matched and compatible with the data type of its corresponding columns in another result set
- The `ORDER BY` clause can be applied to the last query to sort the result

### Full `OUTER JOIN`

- MySQL does not have `FULL JOIN` but we can emulate it
```sql
SELECT * FROM
t1 LEFT JOIN t2 ON t1.id = t2.id
UNION
SELECT * FROM
t1 RIGHT JOIN t2 ON t1.id = t2.id
```

## `INDEX`

- What is an index?
    - An index is a data structure used to locate data without scanning all the rows in a table for a given query
- How does MySQL retrieve data?
    - Without an inde, MySQL must begin with the first row and read through the entire table to find the relevant rows
    - Indexes are used to find rows with specific column values quickly
    - If the table has an index for the columns in question, MySQL can quickly determine the position to seek in the middle of the data file without having to look at all the data
- MySQL can create multiple indexes for a single table
- An index can be composite
- Indexes are usually sorted and stored in the database storage
- Indexes require addition storage space
- MySQL will automatically create an index for `PRIMARY KEY`, `UNIQUE`, and `FOREIGN KEY`

### `INDEX` - An Example

```sql
CREATE TABLE t_index(
    id INT PRIMARY KEY AUTO_INCREMENT, 
    uid INT NOT NULL, 
    name CHAR(20) NOT NULL
);
```

- If we have 10 million records in this table, what is the difference between retrieving by id and uid?

### Create `INDEX`

- Create an index while creating a table
```sql
CREATE TABLE table_name(
    field type <constraints>
    ...
    <constraints>
    <UNIQUE|FULLTEXT> INDEX <index_name> (field<(length)>)
);
```
- Create an index on an existing table
```sql
CREATE <UNIQUE|FULLTEXT> INDEX index_name ON table_name (field<(length)>);
```

### Check `INDEX`

```sql
SHOW INDEX FROM table_name;
```

### Delete `INDEX`

```sql
DROP INDEX index_name ON table_name;
```

### How to Choose an Index

- The following are more suitable it is for indexing:
    - The better the dispersion of a field
    - Less space occupied is more suitable for indexing
    - Fixed storage space
    - Often used in `WHERE`, `GROUP BY`, and `ORDER BY`
    - Join field between two tables
