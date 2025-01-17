# Introduction

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [What is Data?](#what-is-data)
    1. [Is this Data?](#is-this-data)
    2. [With Attribute](#with-attribute)
    3. [With Another Variable](#with-another-variable)
2. [Traditional File Processing System](#traditional-file-processing-system)
3. [Issues](#issues)
4. [Database - Basic Definitions](#database---basic-definitions)
5. [Simplified Database System Environment](#simplified-database-system-environment)
6. [Database Management System (DBMS)](#database-management-system-dbms)
7. [Application](#application)
8. [Insulation Between Programs and Data](#insulation-between-programs-and-data)
9. [Multiple Views Of The Data](#multiple-views-of-the-data)
10. [Data Sharing and Transaction](#data-sharing-and-transaction)
11. [Advantages Of Using DBMS](#advantages-of-using-dbms)
12. [When Not To Use A DBMS](#when-not-to-use-a-dbms)

## What is Data?

- Known facts that can be recorded and have an implicit meaning
- Data is information that has been translated into a form that is efficient for movement or processing
- Numbers, words, measurements, descriptions, etc.
- Need a way to **store** and **retrieve** data in correct, convenient, efficient, and secure manner
- *It is acceptable for the word **data** to be used as both singular and plural*

### Is this Data?

```python
x = [1365.81, 1247.18, 318.457, 252.1648, 202.91]
```
- Yes, but it is meaningless

### With Attribute

```python
population = [1365.81, 1247.18, 318.457, 252.1648, 202.91]
```
- We know better, but still not very useful

### With Another Variable

```python
placeWithPopInMil = {"China":1365.81, "India":1247.18, "USA":318.457, "Indonesia":252.1648, "Brazil":202.91}
```
- Much better, but need more; maybe we could also use dates for recordkeeping

## Traditional File Processing System

- Data is organized into files and folders

![File Processing System](https://docstore.mik.ua/orelly/unix/upt/figs/1018b.gif)

## Issues

- Data redundancy and inconsistency
- Difficulty in retrieving specific data 
- Data integrity concerns
- Security problems

## Database - Basic Definitions

- **Database**
    - A collection (structure) of related data 
- **Database Management System (DBMS)**
    - A software package/system to facilitate the creation and maintenance of a computerized database
- **Database System**
    - The DBMS software, together with the data itself and sometimes applications 

## Simplified Database System Environment

![Simplified Database System Environment](https://www.w3schools.in/wp-content/uploads/2016/08/Database-System-Environment.png?ezimgfmt=rs:396x357/rscb49/ngcb48/notWebP)

## Database Management System (DBMS)

- A general-purpose software that controls all access to a database 
- Create, update, and delete data 
- Ensure correctness, security, convenience, and efficiency
- Manage concurrent access by multiple users 
- Handle and recover from errors
- *We will use Oracle MySQL Database for this course*

## Application

- A program that accesses the database by sending queries to DBMS 
- **Queries**
    - that access different parts of data and formulate the request into a result 
- **Transactions**
    - that may read some data and update certain values or generate new data 
- **Database system**
    - The DBMS software together with the data itself. Sometimes, the applications are also included
- Applications must NOT allow unauthorized users to access data 

## Insulation Between Programs and Data

## Multiple Views Of The Data

## Data Sharing and Transaction

## Advantages Of Using DBMS

## When Not To Use A DBMS
