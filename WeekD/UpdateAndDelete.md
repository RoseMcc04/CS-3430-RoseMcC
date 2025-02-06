# `UPDATE` and `DELETE`

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [`UPDATE`](#update)
2. [`DELETE`](#delete)
3. [`TRUNCATE`](#truncate)

## `UPDATE`

```sql
UPDATE table_name SET field=value [WHERE condition];
```
- Be aware of `FOREIGN KEY` constraint

## `DELETE`

```sql
DELETE FROM table_name [WHERE condition];
```

## `TRUNCATE`

```sql
TRUNCATE TABLE table_name;
```
- Similar to `DELETE` without `WHERE`
- Differences when...
    - removing parent table
    - removing table with `AUTO_INCREMENT` field
