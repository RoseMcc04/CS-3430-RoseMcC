# ER (Entity-Relationship) to Relational

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [ER Conceptual Schema Diagram](#er-conceptual-schema-diagram)
2. [The Relational Schema](#the-relational-schema)
3. [Step 1: Regular Entity Type](#step-1-regular-entity-type)
4. [Step 2: Weak Entity Tpe](#step-2-weak-entity-type)
5. [Step 3: Binary 1:1 Relationship Type](#step-3-binary-11-relationship-type)
6. [Step 4: Binary 1:N Relationship Type](#step-4-binary-1n-relationship-type)
7. [Step 5: Binary M:N Relationship Type](#step-5-binary-mn-relationship-type)
8. [Step 6: Multi-Valued Attributes](#step-6-multi-valued-attributes)
9. [Step 7: N-ary Relationship Type](#step-7-n-ary-relationship-type)

## ER Conceptual Schema Diagram

![Diagram Example](https://i.sstatic.net/RXBm7.jpg)

## The Relational Schema

![Schema Example](https://media.geeksforgeeks.org/wp-content/uploads/20240607132341/Relation_Schema.png)

## Step 1: Regular Entity Type

- Directly maps to a table of the same name
- Simple attributes and single-valued attributes form columns
- Composite attributes
    - Add each part of the attribute as a separate column to the entity table
        - *rename attribute parts of needed for clarity of meaning*

## Step 2: Weak Entity Type

- Create a separate table for the weak entity
- Add all attributes of the weak entity
- Add a foreign key reference to the primary key of the identifying entity
- The primary key of the weak entity is a combination of the primary key of the identifying entity and the partial key of the weak entity

## Step 3: Binary 1:1 Relationship Type

- Foreign key approach:
    - Add a foreign key to one of the entity table references to the other entity table
- Merge relation approach:
    - Merge the two entity tables into a single table
        - *possible when both participations are total*
- Cross-reference approach:
    - Create a separate table (relationship relation) with two foreign keys cross-referencing the primary keys of two entity tables
    - Composite primary key or one is the primary key (total participation) the other is a unique key

## Step 4: Binary 1:N Relationship Type

- Foreign key approach:
    - Add a foreign key to the N-side entity table references to the 1-side entity table
- Cross-reference approach:
    - Create a separate table (relationship relation) with two foreign keys cross-referencing the primary keys of two entity tables
    - Composite primary key

## Step 5: Binary M:N Relationship Type

- Cross-reference approach:
    - Create a separate table (relationship relation) with two foreign keys cross-referencing the primary keys of two entity tables
    - Composite primary key

## Step 6: Multi-Valued Attributes

## Step 7: N-ary Relationship Type
