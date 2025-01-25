# EER Model

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [EER (Enhanced Entity-Relationship) Model](#eer-enhanced-entity-relationship-model)
2. [Subclasses and Superclasses](#subclasses-and-superclasses)
    1. [*Examples of Subclasses and Superclasses*](#examples-of-subclasses-and-superclasses)
3. [Specialization](#specialization)
4. [Generalization](#generalization)
5. [Constraints on Specialization and Generalization](#constraints-on-specialization-and-generalization)
6. [Hierarchies and Lattices](#hierarchies-and-lattices)
    1. [*A Specialization Lattice*](#a-specialization-lattice)
7. [Attribute Inheritance and Shared Subclass](#attribute-inheritance-and-shared-subclass)
8. [UNION Type](#union-type)
9. [UML Class Diagram for EER](#uml-class-diagram-for-eer)


## EER (Enhanced Entity-Relationship) Model

- To enhance the basic ER model...
    - Subclasses/superclasses
    - Specialization/generalization
    - Hierarchies/lattices
    - Attribute inheritance
    - UNION types

## Subclasses and Superclasses

- `EMPLOYEE` may be firther grouped into...
    - `SECRETARY`, `ENGINEER`, `TECHNICIAN`, ...
        - Based on the `EMPLOYEE`'s job
    - `MANAGER`
        - `EMPLOYEE`'s who are managers
    - `SALARIED_EMPLOYEE`, `HOURLY_EMPLOYEE`
        - Based on the `EMPLOYEE`'s method of pay
- A subset of the `EMPLOYEE` entity is called a **subclass** of `EMPLOYEE`
- `EMPLOYEE` is the **superclass** for each of these subclasses
- Subclass/superclass relationship: **is-a relationship**
- An instance of a subclass must also be an instance of the superclass
- A subclass inherits all attributes and relationships of its subclasses

### *Examples of Subclasses and Superclasses*

- A salaried employee who is also an engineer belongs to the two subclasses:
    - `ENGINEER`
    - `SALARIED_EMPLOYEE`
- A salaried employee who is also an engineering manager belongs to the three subclasses:
    - `MANAGER`
    - `ENGINEER`
    - `SALARIED_EMPLOYEE`

## Specialization

- The process of defining a set of subclasses of an entity type

## Generalization

- Inverse of the specializatioon process
- Several entities with common features generalize the common features into a superclass

## Constraints on Specialization and Generalization

## Hierarchies and Lattices

### *A Specialization Lattice*

## Attribute Inheritance and Shared Subclass

## UNION Type

## UML Class Diagram for EER
