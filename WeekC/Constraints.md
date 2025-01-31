# Constraints

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [Constraints](#constraints)
2. [`AUTO_INCREMENT`](#auto_increment)
3. [`FOREIGN KEY`](#foreign-key)
    1. [Remove Table with Foreign Key](#remove-table-with-foreign-key)
4. [`ALTER TABLE`](#alter-table)

## Constraints

- `AUTO_INCREMENT`
- `FOREIGN KEY`
- Copy table

## `AUTO_INCREMENT`

- The `AUTO_INCREMENT` field will be incremented in order, not repeated
- The `AUTO_INCREMENT` field must be the `PRIMARY KEY`
- The data type of the `AUTO_INCREMENT` field must be an integer
- *Example*
```sql
CREATE TABLE student (
    stu_no INT PRIMARY KEY AUTO_INCREMENT, 
    stu_name VARCHAR(20) NOT NULL
);
INSERT INTO student (stu_name) VALUES ('Tom');
INSERT INTO student (stu_name) VALUES ('Jerry');
INSERT INTO student VALUES (10, 'Mickey');
INSERT INTO student VALUES (NULL, 'Donald');
INSERT INTO student VALUES (2, 'Goofy');
```

## `FOREIGN KEY`

- Syntax
    - `FOREIGN KEY (field) REFERENCES parent_table (primary key)`
- *Example*
```sql
CREATE TABLE course (
    course_number CHAR(8);
    course_name CHAR(50);
);
CREATE TABLE student (
    stu_no INT PRIMARY KEY, 
    stu_name VARCHAR(20) NOT NULL, 
    course CHAR(8), 
    FOREIGN KEY (course) REFERENCES course (course_number)
);
```

### Remove Table with Foreign Key

- The child table must be deleted first

## `ALTER TABLE`

- *Example of commands*
```sql
ALTER TABLE table_name ADD COLUMN field_name data_type;​

ALTER TABLE table_name DROP COLUMN field_name CASCADE/RESTRICT;​

ALTER TABLE table_name CHANGE old_field_name new_field_name data_type;​

ALTER TABLE table_name ALTER COLUMN field_name SET constraint;​

ALTER TABLE table_name ALTER COLUMN field_name DROP constraint;​

ALTER TABLE table_name ADD CONSTRAINT constraint;​

ALTER TABLE table_name DROP CONSTRAINT constraint_ name CASCADE/RESTRICT;​
```
