# ER (Entity-Relationship) Model

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [ER (Entity-Relationship) Model](#er-entity-relationship-model-1)
2. [Entity and Attributes](#entity-and-attributes)
    1. [Entity](#entity)
    2. [Entity Type and Entity Set](#entity-type-and-entity-set)
    3. [Attribute](#attribute)
        1. [Types of Attributes](#types-of-attributes)
        2. [Key Attributes](#key-attributes)
3. [Main Concepts of ER Model](#main-concepts-of-er-model)
4. [Relationship](#relationship)
    1. [Relationship Type and Relationship Set](#relationship-type-and-relationship-set)
    2. [One-to-One Relationship](#one-to-one-relationship)
    3. [Many-to-One Relationship](#many-to-one-relationship)
    4. [Many-to-Many Relationship](#many-to-many-relationship)
    5. [Cardinality Ratio Constraints](#cardinality-ratio-constraints)
    6. [Participation Constraint](#participation-constraint)
    7. [Recursive Relationship](#recursive-relationship)
    8. [Attributes of Relationship Types](#attributes-of-relationship-types)
5. [Weak Entity Types](#weak-entity-types)
6. [Summary of Notation for ER Diagrams](#summary-of-notation-for-er-diagrams)
7. [Relationships of Higher Degree](#relationships-of-higher-degree) 

## ER (Entity-Relationship) Model

- A popular high-level conceptual data model 

## Entity and Attributes

### Entity

- An entity is something of importance to a user or organization that needs to be represented in a database
- An entity represents one theme, topic, or business concept
- In the ER model, entities are restricted to things that can be represented using a single table
- *Model Notation:*

### Entity Type and Entity Set

- **Entity type**
    - Entities with the same basic attributes are grouped or typed into an eitity type
- **Entity set (collection)**
    - A collection of entities of an entity type
    - The entity set is the current *state* of the entities of that type that are stored in the database

### Attribute

- Attributes are properties used to describe an entity
- Each attribute has a value set (or data type) associated with it
- *Model Notation:*

#### Types of Attributes

- Simple
- Composite
- Multi-valued
- Derived

#### Key Attributes

- An attribute of an eitity type for which each entity must have a unique value is called a **key attribute** of the entity type

## Main Concepts of ER Model

- The initial design is typically not complete
- ER model has three main concepts:
    - Entity
    - Attribute
    - Relationship
- Some aspects in the requirements will be represented as relationships 

## Relationship

- A **relationship** relates two or more distinct entities with a specific meaning

### Relationship Type and Relationship Set

- Relationships of the same type are grouped or typed into a **relationship type**
- The degree of a relationship type is the number of participating entity types
- **Relationship set** is the current state of a relationship type

### One-to-One Relationship

![One-to-One Relationship](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQohrD4vpO2Y8zAUGzKbf8nEeYfoZAsHs7qcA&s)

### Many-to-One Relationship

![Many-to-One Relationship](https://i.sstatic.net/thblX.jpg)

### Many-to-Many Relationship

![Many-to-Many Relationship](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4_5gE71A5KligW7zYBDMY9ixQKo9p2EjaMA&s)

### Cardinality Ratio Constraints

- Specifies maximum participation

![Cardinality Ratio Example Diagram](https://wofford-ecs.org/DataAndVisualization/ermodel/images/fig18.jpg)

### Participation Constraint

![Participation Constraint Example](https://media.geeksforgeeks.org/wp-content/uploads/20240213114652/Screenshot-(982).png)

### Recursive Relationship

![Recursive Relationship Example](https://media.geeksforgeeks.org/wp-content/uploads/dbms2.jpg)

### Attributes of Relationship Types

- A relationship type can have attributes
- Most relationship attributes are used with M:N relationships

## Weak Entity Types

- An entity that does not have a key attribute and that is identification-dependent on another entity type
- A weak entity must participate in an identifying relationship type with an owner or identifying entity type

## Summary of Notation for ER Diagrams

![ER Diagram Notation](https://images.edrawsoft.com/articles/er-diagram-symbols/chens-notation-1.png)

## Relationships of Higher Degree

- Relationship types of degree 2 are called binary
- Relationship types of degree 3 are called ternary
- Relationship types of degree n are called n-ary
- Constraints are harder to specify for higher-degree relationships (n > 2) than for binary relationships
