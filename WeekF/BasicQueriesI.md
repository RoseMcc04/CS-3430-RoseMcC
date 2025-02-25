# Basic Queries I

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [`SELECT` Statement](#select-statement)
2. [`SELECT` Statement Displays a Result Table](#select-statement-displays-a-result-table)
3. [Field List](#field-list)
4. [Remove Duplicated Result](#remove-duplicated-result)
5. [Apply `DISTINCT` on Multiple Fields](#apply-distinct-on-multiple-fields)
6. [`WHERE` Condition](#where-condition)
7. [*A Query With Two Tables*](#a-query-with-two-tables)
8. [*A Query With Three Tables*](#a-query-with-three-tables)

## `SELECT` Statement

```sql
SELECT <field list>
FROM <table list>
WHERE <condition>
[GROUP BY <grouping field>]
[ORDER BY <ordering field>]
[LIMIT [start] length]
```

## `SELECT` Statement Displays a Result Table

```sql
SELECT <field list>
FROM <table list>
WHERE <condition>
[GROUP BY <grouping field>]
[ORDER BY <ordering field>]
[LIMIT [start] length]
```

![Table Example](https://dev.mysql.com/doc/workbench/en/images/wb-schema-inspector-tables.png)

## Field List

- `*`
    - all data
- `field_name list`
    - comma-separated list of field names
- `table_name.*`
    - all data from a specific table
- `table_name.field_name`
    - specific field from a specific table
- `expression`
    - function, calculation
- `SELECT VERSION()`
    - returns current SQL version
- `SELECT NOW()`
    - returns the current time
- `SELECT VERSION(), NOW()`
    - returns both current version and current time

## Remove Duplicated Result

- The keyword `DISTINCT`
- *Example*
```sql
USE information_schema;
SHOW tables;
DESC tables;
SELECT table_schema FROM tables;
SELECT table_type FROM tables;
```
- How to use `DISTINCT`?

## Apply `DISTINCT` on Multiple Fields

- How to apply `DISTINCT`:
```sql
SELECT table_schema, table_type FROM tables;
SELECT DISTINCT table_schema, table_type FROM tables;
```
- How many results will we get?

## `WHERE` Condition

- Comparison operators
    - `=`, `<`, `<=`, `>`, `>=`, and `<>`
- Logical operators
    - `AND`, `OR`, `NOT`

## *A Query With Two Tables*

- List the first name, last name, and addresses of all employees from the department Research

```sql
SELECT Fname, Lname, Address​
FROM EMPLOYEE, DEPARTMENT​
WHERE Dname = ‘Research’ AND Dnumber = Dno;​
```

## *A Query With Three Tables*

- For every project located in 'Stafford', list the project name, the controlling department number, and the department manager's last name, address, and birth date
```sql
SELECT Pnumber, Dnum, Lname, Address, Bdate
FROM PROJECT, DEPARTMENT, EMPLOYEE
WHERE Dnum = Dnumber AND Mgr_ssn = Ssn AND Plocation = 'Stafford'
```
