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

```sql
CREATE TABLE student (
    stu_no INT PRIMARY KEY, 
    stu_name VARCHAR(20) NOT NULL
);
```
- *Example*
```sql
INSERT INTO student VALUES(1, NULL);    error?
INSERT INTO student (stu_no) VALUES(2); error?
```

## `DEFAULT`

- `DEFAULT value`
- *Example*
```sql
CREATE TABLE student (
    stu_no INT PRIMARY KEY, 
    stu_name VARCHAR(20), 
    course CHAR(10) DEFAULT 'CS3430'
);
INSERT INTO student VALUES(1, 'TOM', DEFAULT);
INSERT INTO student (stu_no, stu_name) VALUES (2, 'Jerry');
```

## `UNIQUE`

```sql
CREATE TABLE student (
    stu_no INT PRIMARY KEY, 
    stu_name VARCHAR(20) NOT NULL, 
    phone CHAR(10) UNIQUE
);
```
- *Example*
```sql
INSERT INTO student VALUES(1, 'Tom', NULL);   error?
INSERT INTO student VALUES(2, 'Jerry', NULL); error?
```

## `CHECK`

- Limit the value range in certain columns
```sql
CREATE TABLE student (
    stu_no INT PRIMARY KEY, 
    stu_name VARCHAR(20) NOT NULL, 
    grade CHAR(1), 
    CHECK (stu_no >= 1 AND grade IN ('A', 'B', 'C', 'D'))
);
```

## Summary

- `PRIMARY KEY`
    - at most one primary key can be in a table
    - can be a single field or multiple fields
    - cannot be null
    - must be unique
- `NOT NULL`
    - can have multiple `NOT NULL` constraints in a table
- `UNIQUE`
    - can have multiple `UNIQUE` constraints in a table
    - can be null
    - can have duplicated nulls
