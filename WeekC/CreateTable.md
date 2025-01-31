# Create Table

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [Create Table](#create-table-1)
2. [Show Table](#show-table)
3. [Remove Table](#remove-table)
4. [Constraint](#constraint)
5. [`PRIMARY KEY`](#primary-key)
6. [Basic Insert and Query](#basic-insert-and-query)
7. [Composite Primary Key](#composite-primary-key)
8. [`NOT NULL`](#not-null)
9. [`DEFAULT`](#default)
10. [`UNIQUE`](#unique)
11. [`CHECK`](#check)
12. [Summary](#summary)

## Create Table

```sql
CREATE TABLE table_name (
    column1 datatype, 
    column2 datatype, 
    ...
);
```
```sql
CREATE TABLE table_name (
    column1 datatype [constraint], 
    column2 datatype [constraint], 
    ...
    [other constraint], 
    [other constraint]
)[other options];
```

## Show Table

- Lists all non-TEMPORARY tables in a given database
    - `SHOW TABLES`
- Describes the structure of a table
    - `DESC/DESCRIBE table_name;`
- Show the statement that creates the named table
    - `SHOW CREATE TABLE table_name;`

## Remove Table

- `DROP TABLE [IF EXISTS] table_name;`

## Constraint

- `PRIMARY KEY`
- `NOT NULL`
- `DEFAULT`
- `UNIQUE`
- `CHECK`
- `FOREIGN KEY ... REFERENCES`
- `AUTO_INCREMENT`
- Copy table

## `PRIMARY KEY`

- Syntax
    - `column datatype [constraint] PRIMARY_KEY`
- *Example*
```sql
CREATE TABLE student (
    stu_no INT PRIMARY_KEY, 
    stu_name VARCHAR(20)
);
```

## Basic Insert and Query

- Insert a row into a table
    - `INSERT INTO table_name [fields list] VALUES (values list);`
- Query everything in a table
    - `SELECT * FROM table_name;`
- *Example*
```sql
INSERT INTO student VALUES (1, Tom);        error?
INSERT INTO student VALUES (1, 'Jerry');    error?
INSERT INTO student VALUES (NULL, 'Jerry'); error?
SELECT * FROM student;
```

## Composite Primary Key

- Consider creating the `exam` table:
```sql
    CREATE TABLE exam (
        exam_class CHAR(3) PRIMARY KEY, 
        exam_date DATE PRIMARY KEY, 
        course CHAR(30)
    );
    error?
```
- Fix it:
```sql
    CREATE TABLE exam (
        exam_class CHAR(3), 
        exam_date DATE, 
        course CHAR(30), 
        PRIMARY KEY (exam_class, exam_date)
    );
```

## `NOT NULL`

## `DEFAULT`

## `UNIQUE`

## `CHECK`

## Summary
