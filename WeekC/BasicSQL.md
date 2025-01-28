# Basic SQL

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [Relational Data Model](#relational-data-model)
    1. [*A Relation Example*](#a-relation-example)
    2. [*Example of Relational Database Schema*](#example-of-relational-database-schema)
2. [Implementation](#implementation)
3. [Relational Model](#relational-model)
4. [SQL (Structured Query Language)](#sql-structured-query-language)
5. [MySQL](#mysql)
6. [Creating a Database](#creating-a-database)
7. [Show Database](#show-database)
8. [Current Database](#current-database)
9. [Remove Database](#remove-database)
10. [Create Table](#create-table)
11. [Show Table](#show-table)
12. [MySQL Data Types](#mysql-data-types)
    1. [Integer Number](#integer-number)
    2. [Other Numeric Data Types](#other-numeric-data-types)
    3. [Exact Value](#exact-value)
        1. [Attributes for Numeric Data](#attributes-for-numeric-data)
    4. [String](#string)
    5. [Date and Time](#date-and-time)

## Relational Data Model

- Represents data as a collection of *relations/tables*
- Represents related data values as *tuples/rows*
- Each row corresponds to an entity or relationship
- Column headers indicate attributes
- Table names (unique) interpret the meaning of the data values  

### *A Relation Example*

![Relation Example](https://d186loudes4jlv.cloudfront.net/sql/images/table_relationships/table-relationships.png)

### *Example of Relational Database Schema*

![Relational Database Schema Example](https://d1whtlypfis84e.cloudfront.net/guides/wp-content/uploads/2019/01/01111318/Relational-databse.png)

## Implementation

- Install and configure DBMS
- Create development and test databases (DDL)
- Create tables and other constructs (DDL)
- Load data into databases (DML)
- Set up users and security

## Relational Model

- DDL and DML
- ER-Relational and EER-Relational mapping
- Queries and more about SQL

## SQL (Structured Query Language)

- Considered one of the major reasons for the commercial success of relational databases
- SQL is an informal or practical rendering of the relational data model with syntax
- **Table**, **row**, and **column** used for relational model terms *relation*. *tuple*, and *attribute*

## MySQL

- A relational database management system
- Fast, reliable, scalable, and easy to use
- Cross-platform
- Tool
    - MySQL Workbench
- Connect to MySQL Server
    - Access your database (schema)

## Creating a Database

- We do not have permission to do this in our DBMS
```sql
CREATE DATABASE dbname;
```

## Show Database

- List all datbases on the MySQL server host
```sql
SHOW DATABASES;
```
- Show the statement that creates the named database
```sql
SHOW CREATE DATABASE dbname;
```

## Current Database

- Switch to a database
```sql
USE dbname;
```
- Show the current database
```sql
SELECT DATABASE();
```

## Remove Database

- We do not have permission to do this in our DBMS
```sql
DROP DATABASE dbname;
```

## Create Table

- *Example*
```sql
CREATE TABLE student (
    stu_no INT, 
    stu_name VARCHAR(40)
);
```

## Show Table

- List all non-TEMPORARY tables in a given database
```sql
SHOW TABLES;
```
- Describe the structure of a table
```sql
DESC table_name;
```

```sql
DESCRIBE table_name;
```
- Show the statement that creates the named table
```sql
SHOW CREATE TABLE table_name;
```

## MySQL Data Types

- Numeric
    - Integer numbers
    - Floating-point numbers
- String
- Timestamp

### Integer Number

- `TINYINT`
    - 1 byte, [0, 255] or [-128, 127]
- `SMALLINT`
    - 2 bytes, [0, 65,535] or [-32,768, 32,767]
- `MEDIUMINT`
    - 3 bytes, [0, 16,777,215] or [-8,388,608, 8,388,607]
- `INT`
    - 4 bytes, [0, 4,294,967,295] or [-2,147,483,648, 2,147,483,647]
- `BIGINT`
    - 8 bytes, [0, 18,446,744,073,709,551,615] or [-9,223,372,036,854,775,808, 9,223,372,036,854,775,807]

### Other Numeric Data Types

- `FLOAT <UNSIGNED>`
    - 4 bytes
- `DOUBLE <UNSIGNED>`
    - 8 bytes
- `REAL`
    - Floating precision number data from -3.40E+38 to 3.40E+48

### Exact Value

- `DECIMAL (precision, scale)`
    - The precision represents the number of significant digits for values
    - The scale represents the number of digits following the decimal point
    - precision > scale

#### Attributes for Numeric Data

- `UNSIGNED` is used to constrain the variable not to be negative

### String

- `CHAR(n)`
    - Fixed length string
- `VARCHAR(n)`
    - Varying length string
- `TEXT`
    - For a paragraph or document

### Date and Time

- `DATE`
    - In 'YYYY-MM-DD' format
    - Range is '1000-01-01' to '9999-12-31'
- `TIME`
    - In 'hh:mm:ss' format
    - Range is '-838:59:59' to '838:59:59'
- `DATETIME`
    - In 'YYYY-MM-DD hh:mm:ss' format
    - Range is '1000-01-01 00:00:00' to '9999-12-31 23:59:59'
