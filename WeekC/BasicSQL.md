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

### Integer Number

### Other Numeric Data Types

### Exact Value

#### Attributes for Numeric Data

### String

### Date and Time
