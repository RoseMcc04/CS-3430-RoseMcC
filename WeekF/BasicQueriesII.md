# Basic Queries II

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [Ambiguous Attribute Names](#ambiguous-attribute-names)
2. [Use Alias in the `FROM` Clause](#use-alias-in-the-from-clause)
3. [Pattern Matching](#pattern-matching)
4. [Comparison Involving `NULL`](#comparison-involving-null)
5. [What is `A NULL`?](#what-is-a-null)
6. [Three-Valued Logic](#three-valued-logic)
7. [Work with a `NULL`](#work-with-a-null)
8. [Ordering of Query Results](#ordering-of-query-results)
9. [Order by Multiple Fields](#order-by-multiple-fields)
10. [Subset of a Result](#subset-of-a-result)

## Ambiguous Attribute Names

- Recall this example: 
```sql
SELECT Fname, Lname, Address​
FROM EMPLOYEE, DEPARTMENT​
WHERE Dname = ‘Research’ AND Dnumber = Dno;​
```
- What if Dno in EMPLOYEE table was also called Dnumber?
```sql
SELECT Fname, Lname, Address​
FROM EMPLOYEE, DEPARTMENT​
WHERE Dname = ‘Research’ AND EMPLOYEE.Dnumber = DEPARTMENT.Dnumber;​
```

## Use Alias in the `FROM` Clause

```sql
SELECT E.Fname, E.Lname, S.Fname, S.Lname
FROM EMPLOYEE AS E, EMPLOYEE AS S
WHERE E.Super_ssn = S.Ssn
```
- Can we use the original table name when setting an alias?

## Pattern Matching

- `%` replaces and arbitrary number of zero or more characters
- `_` replaces a single character
- `LIKE`
```sql
WHERE Address LIKE '%Houston,TX%';
WHERE SSn LIKE '__1__8901';
```
- `BETWEEN`
```sql
WHERE (Salary BETWEEN 30000 and 40000) AND Dno = 5;
```

## Comparison Involving `NULL`

- How to list all records that the foreign key is `NULL`?
```sql
SELECT * FROM table WHERE fk = NULL​
SELECT * FROM table WHERE fk <> NULL
```
- These ways are **WRONG**

## What is `A NULL`?

- Unknown value
    - value exists but is not known
        - a student's date of birth
    - is not known whether or not the value exists
        - a student's home phone
- Unavailable or withheld value
    - value exists but is purposely withheld
        - a student has a home phone but does not want it as listed
- Not applicable
    - the attribute does not apply to this tuple or is undefined for this tuple
        - LastCollegeDegree would be `NULL` for a person who has no college degree

## Three-Valued Logic

![Three-Valued Logic Diagram](https://www.researchgate.net/publication/326331703/figure/tbl1/AS:668665557049358@1536433700677/1-Truth-table-of-the-Kleene-three-valued-logic-used-in-spacetime.png)

## Work with a `NULL`

- Each individual `NULL` value is considered to be different from any other `NULL` values
- `NULL = NULL` comparison is avoided
- To check whether a value is `NULL`
    - `IS` or `IS NOT`

## Ordering of Query Results

- `ORDER BY` clause
- `DESC` specifies descending order
- `ASC` specifies ascending order (default)
```sql
SELECT D.Dname, E.Lname, E.Fname, P.Pname​
FROM DEPARTMENT AS D, EMPLOYEE AS E, WORKS_ON AS W, PROJECT AS P​
WHERE D.Dnumber = E.Dno AND E.Ssn = W.Essn AND W.Pno = P.Pnumber​
ORDER BY D.Dname DESC, E.Lname ASC, E.Fname ASC;​
```

## Order by Multiple Fields

- `ORDER BY <field 1>, <field 2>, ...`

## Subset of a Result

- `LIMIT [start,] length`
