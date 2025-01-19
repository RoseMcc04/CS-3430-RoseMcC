# Database System Concepts and Architecture

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [Data Abstraction](#data-abstraction)
2. [Data Models](#data-models)
    1. [Categories of Data Models](#categories-of-data-models)
3. [Database Schemas](#database-schemas)
4. [Database State (Instance)](#database-state-instance)
5. [Schemas vs. States](#schemas-vs-states)
6. [DBMS Languages](#dbms-languages)
7. [DBMS Architecture](#dbms-architecture)
    1. [Centralized DBMS Architecture](#centralized-dbms-architecture)
    2. [Logical Two-Tier Client-Server Architecture](#logical-two-tier-client-server-architecture)
    3. [Logical Three-Tier Client-Server Architecture](#logical-three-tier-client-server-architecture)
8. [Database Users](#database-users)
    1. [Actors on the Scene](#actors-on-the-scene)
    2. [Workers Behind the Scene](#workers-behind-the-scene)
9. [Database Development](#database-development)
10. [Waterfall Process Model](#waterfall-process-model)
11. [Requirements Gathering and Analysis](#requirements-gathering-and-analysis)
12. [Design](#design)
13. [Implementation](#implementation)
14. [Testing and Evaluation](#testing-and-evaluation)
15. [Deployment](#deployment)

## Data Abstraction

- A data model hides the storage details and presents users with a conceptual view of the database
- Programs refer to the data model constructs rather than data storage details

## Data Models

- A set of concepts to describe the **structure** of a database, the **operations** for manipulating these structures, and certain **constraints** that the database should obey
- **Structure (Constructs)**
    - Typically includes elements (and their data types), groups of elements (entity, record, table, etc.), and their relationship
- **Constraints**
    - Specify some restrictions on valid data
    - Must be enforced at all times
- **Operations**
    - Specify database retrievals and updates
    - May include basic model operations (generic insert, delete, and update) and user-defined operations (compute_student_gpa, update_inventory)

### Categories of Data Models

- **Conceptual data models (high-level)**
    - Provide concepts that are close to the way many users perceive data 
- **Physical data models (low-level)**
    - Provides concepts that describe details of how data is stored in the computer 
- **Representation data models (implementation)**
    - Provide concepts that fall between the above two - may be easily understood by end users but not too far from the way that data is organized 
    - Include widely used relational data model and object data model 
- **Self-describing data models**
    - NoSQL database 

## Database Schemas

- The description of a database 

## Database State (Instance)

- The data in the database at a particular moment (snapshot)

## Schemas vs. States

- **Database schema**
    - Structure, data types, and constraints 
    - Changes very infrequently
- **Database state**
    - Changes every time the database is updated 

## DBMS Languages

## DBMS Architecture

### Centralized DBMS Architecture

### Logical Two-Tier Client-Server Architecture

### Logical Three-Tier Client-Server Architecture

## Database Users

### Actors on the Scene

### Workers Behind the Scene

## Database Development

## Waterfall Process Model

## Requirements Gathering and Analysis

## Design

## Implementation

## Testing and Evaluation

## Deployment
