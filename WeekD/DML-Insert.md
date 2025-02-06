# Data Manipulation Language

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [Data Manipulation Language](#data-manipulation-language-1)
2. [Insert](#insert)
    1. [Insert a Single Row](#insert-a-single-row)
    2. [Insert Multiple Rows](#insert-multiple-rows)
    3. [Insert Rows from Another Table](#insert-rows-from-another-table)

## Data Manipulation Language

- Modify the database
    - `INSERT`
        - Insert a row or several rows into a table
    - `UPDATE`
        - Update a number of rows in a table that satisfy the confition
    - `DELETE`
        - Remove a row or multiple rows

## Insert

### Insert a Single Row

- `INSERT INTO table_name [fields list] VALUES (values list);`
- `[field list]` used to specify the item and order of `values list`
- Be careful with the constraint
- It is better not to assign value to the `AUTO_INCREMENT` field

### Insert Multiple Rows

```sql
INSERT INTO table_name [fields list] VALUES 
(values list), 
(values list), 
...
(values list);
```

### Insert Rows from Another Table

```sql
INSERT INTO table_name SELECT * FROM source_table
```
