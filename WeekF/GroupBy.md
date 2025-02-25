# Group By

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [Aggregate Functions](#aggregate-functions)
2. [`NULL` && `DISTINCT`](#null--distinct)
3. [`GROUP BY`](#group-by-1)
4. [Group By Multiple Fields](#group-by-multiple-fields)
5. [`HAVING`](#having)
6. [Execution Order](#execution-order)
    1. [Syntax](#syntax)
    2. [Execution](#execution)

## Aggregate Functions

```sql
COUNT(expression)
MAX(expression)
MIN(expression)
SUM(expression)
AVG(expression)
```

## `NULL` && `DISTINCT`

- Handling `NULL`
    - Ignore
- Working with `DISTINCT`
```sql
SELECT COUNT(table_schema), COUNT(DISTINCT table_schema) FROM information_schema.tables​
```

## `GROUP BY`

```sql
SELECT stu_name, avg(grade) FROM registration​
GROUP BY stu_name;​
SELECT table_schema, COUNT(*) FROM information_schema.tables​
GROUP BY table_schema;​
```
- Can we add 'course' to the result table?
```sql
SELECT stu_name, course, avg(grade) FROM registration
GROUP BY stu_name;
```

## Group By Multiple Fields

```sql
SELECT table_schema, table_type, COUNT(*) ​
FROM information_schema.tables​
GROUP BY table_schema, table_type;​
```

## `HAVING`

```sql
SELECT table_schema, COUNT(*) cnt FROM information_schema.tables​
GROUP BY table_schema​
HAVING cnt>20;​
```

## Execution Order

### Syntax

```sql
SELECT​
    FROM​
        WHERE​
            GROUP BY​
                HAVING​
                    ORDER BY​
```

### Execution

```sql
FROM​
    WHERE​
        SELECT​
            GROUP BY​
                HAVING​
                    ORDER BY​
```
