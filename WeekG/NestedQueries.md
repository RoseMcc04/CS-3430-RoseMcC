# Nested Queries

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [Nested Query for `WHERE`](#nested-query-for-where)
    1. [Subquery That Returns a Single Value]()
    2. [Subquery That Returns Multiple Values]()
    3. [Nested Query Refers to External Query]()
    4. [`ANY`, `SOME`, and `ALL`](#any-some-and-all)
    5. [`EXISTS`](#exists)
2. [Nested Query for `FROM`](#nested-query-for-from)
    1. [Example](#example)

## Nested Query for `WHERE`

### Subquery That Returns a Single Value

| Exam |        |           |
|------|--------|-----------|
| stu_no | course_no | exam_grade |
|--------|-----------|------------|

- How to retrieve average grade:
```sql
SELECT AVG(exam_grade) FROM exam;
```
- How to retrieve students with grade lower than average:
```sql
SELECT stu_no FROM exam
WHERE
    exam_grade < (SELECT AVG(exam_grade) FROM exam);
```

### Subquery That Returns Multiple Values

- *Example: Find the names of all courses taught by instructors with phone numbers starting with '1'*
```sql
SELECT course_name
FROM course
WHERE instructor_no IN (SELECT instructor_no
                        FROM instructor
                        WHERE phone LIKE '1%');
```

### Nested Query Refers to External Query

```sql
SELECT E.Fname, E.Lname
FROM EMPLOYEE AS E
WHERE E.Ssn IN (SELECT D.Essn
                FROM DEPENDENT AS D
                WHERE E.Fname = D.Dependent_name
                AND E.Sex = D.Sex);
```

### `ANY`, `SOME`, and `ALL`

- Construct a query to retrieve the last name and the first name of employees whose salary is lower than all employees of department number 5
```sql
SELECT Lname, Fname
FROM EMPLOYEE
WHERE Salary > ALL(SELECT Salary
                   FROM EMPLOYEE
                   WHERE Dno = 5);
```

### `EXISTS`

```sql
SELECT E.Fname, E.Lname
FROM EMPLOYEE AS E
WHERE EXISTS(SELECT *
             FROM DEPENDENT AS D
             WHERE E.Ssn = D.Essn AND E.Sex = D.Sex
             AND E.Fname = D.Dependent_name);
```

## Nested Query for `FROM`

### Example

```sql
SELECT table_schema, COUNT(*)
FROM information_schema.tables
    GROUP BY table_schema HAVING COUNT(*) > 20;
```
