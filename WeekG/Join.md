# `JOIN`

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [`JOIN` Types](#join-types)
2. [`INNER JOIN`](#inner-join)
3. [`NATURAL JOIN`](#natural-join)
4. [`OUTER JOIN`](#outer-join)
5. [*Example of `LEFT JOIN`*](#example-of-left-join)
6. [Nested `JOIN`](#nested-join)
7. [Implicit `JOIN`](#implicit-join)
8. [Difference Between `ON` and `WHERE`](#difference-between-on-and-where)

## `JOIN` Types

- `INNER JOIN`
    - `JOIN`
    - `NATURAL JOIN`
- `OUTER JOIN`
    - `LEFT JOIN`
    - `RIGHT JOIN`
    - `FULL JOIN` (MySQL does not support)
- `JOIN` condition
    - The condition that connects two tables

## `INNER JOIN`

- Only items that satisfy the join condition are included
- The default type of `JOIN`
```sql
SELECT Fname, Lname, Address
FROM (EMPLOYEE JOIN DEPARTMENT ON Dno = Dnumber)
WHERE Dname = 'Research';
```

## `NATURAL JOIN`

- Kind of inner join without specifying the condition
```sql
SELECT Fname, Lname, Address
FROM (EMPLOYEE NATURAL JOIN
    DEPARTMENT AS DEPT (Dname, Dno, Mssn, Msdate))
WHERE Dname = 'Research';
```

## `OUTER JOIN`

- Inner join plus items that do not match the condition (`NULL`)
    - `LEFT JOIN`
    - `RIGHT JOIN`
    - `FULL JOIN` (MySQL does not support)

## *Example of `LEFT JOIN`*

- All records from the left table and the matching records from the right table
```sql
SELECT E.Lname AS Employee_name, 
       S.Lname AS Supervisor_name, 
FROM (EMPLOYEE AS E LEFT OUTER JOIN EMPLOYEE AS S 
      ON E.Super_ssn = S.Ssn)
```

## Nested `JOIN`

```sql
SELECT Pnumber, Dnum, Lname, Address, Bdate
FROM ((PROJECT JOIN DEPARTMENT ON Dnum = Dnumber) 
      JOIN EMPLOYEE ON Mgr_ssn = Ssn)
WHERE Plocation = 'Stafford';
```

## Implicit `JOIN`

- What is the virtual table for:
```sql
FROM Employ, Department
FROM Employ JOIN Department
```

## Difference Between `ON` and `WHERE`

```sql
SELECT * FROM t1 INNER JOIN t2 ON t1.id = t2.id AND t1.status = '1';
SELECT * FROM t1 INNER JOIN t2 ON t1.id = t2.id WHERE t1.status = '1';​
```
```sql
SELECT * FROM t1 LEFT JOIN t2 ON t1.id = t2.id AND t1.status = '1' AND t2.id<3;​
SELECT * FROM t1 LEFT JOIN t2 ON t1.id = t2.id WHERE t1.status = '1' AND t2.id<3;​
```
```sql
SELECT * FROM t1 LEFT JOIN t2 ON t1.id = t2.id AND t2.id<3 WHERE t1.status = '1';​
SELECT * FROM t1 LEFT JOIN t2 ON t1.id = t2.id AND t1.status = '1' WHERE t2.id<3;​
```
