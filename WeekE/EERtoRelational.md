# EER to Relational

## Table of Contents

0. [Table of Contents](#table-of-contents)
1. [EER Model](#eer-model)
2. [Step 8: Specialization or Generalization](#step-8-specialization-or-generalization)
3. [Multiple Relations - Superclass and Subclasses](#multiple-relations---superclass-and-subclasses)
4. [Multiple Relations - Subclass Relations Only](#multiple-relations---subclass-relations-only)
5. [Single Relation with One Type Attribute](#single-relation-with-one-type-attribute)
6. [Single Relation with Multiple Type Attributes](#single-relation-with-multiple-type-attributes)
7. [Step 9: Union Types (Categories)](#step-9-union-types-categories)

## EER Model

- **I am not putting in pictures due to the conceptual nature of this topic

- Enhanced Entity-Relationship Model
    - subclasses/superclasses
    - specialization/generalization
    - hierarchies/lattices
    - attribute inheritance 
    - UNION types

## Step 8: Specialization or Generalization

- Specialization:
    - The process of defining a set of subclasses of an entity type
- Generalization:
    - The process of defining a generalized entity type
- Convert each specialization with `m` subclasses `{S1, S2, ..., Sm}` and generalized superclass `C`, where the attributes of `C` are `{k, a1, ..., an}` a nd `k` is the (primary) key, into relational schemas
    - Option A: Multiple relations - superclass and subclasses
    - Option B: Multiple relations - subclass relations only
    - Option C: Single relation with one type attribute
    - Option D: Single relation with multiple type attributes

## Multiple Relations - Superclass and Subclasses

- Create a relation `L` for `C` with attributes `Attr(L) = {k, a1, ..., an}` and `PK(L) = k`. Create a relation `Li` for each subclass `Si`, `1 < i < m`, with the attributes `Attrs(Li) = {k} U {attributes of Si}` and `PK(Li) = k`. This option works for any specialization (total or partial, disjoint or overlapping)

## Multiple Relations - Subclass Relations Only

- Create a relation `Li` for each subclass `Si`, `1 < i < m` with the attributes `Attrs(Li) = {attributes of Si} U {k, a1, ..., an}` and `PK(L) = k`. This option only works for a specialization whose subclasses are total (every entity in the superclass must belong to (at least) one of the subclasses)

## Single Relation with One Type Attribute

- Create a single relation `L` with attributes `Attr(L) = {k, a1, ..., an} U {attributes of S1} U ... U {attributes of Sm} U {t}` and `PK(L) = k`. The attribute `t` is called a type (or discriminating) attribute that indicates the subclass to which each tuple belongs

## Single Relation with Multiple Type Attributes

- Create a single relation `L` with attributes `Attr(L) = {k, a1, ..., an} U {attributes of S1} U ... U {attributes of Sm} U {t}` and `PK(L) = k`. Each `ti`, `1 < i < m`, is a Boolean type attribute indicating whether a tuple belongs to the subclass `Si`

## Step 9: Union Types (Categories)

- Union type: a subclass that represents a collection of entities that is a subset of the UNION of entities from a distinct entity type
- For mapping a category whose defining superclass have different keys, it is customary to specify a new key attribute, called a surrogate key, when creating a relation to correspond to the category

## Normalization (Normal Form)

- Relational Model Design Guidelines:
    - Making sure that the semantics of the attributes are clear in the schema
    - Reducing the redundant information in tuples
    - Reducing the NULL values in tuples
    - Disallowing the possibility of generating spurious tuples

### 1NF

- Eliminate repeating groups in individual tables
- Create a separate table for each set of related data
- Identify each set of related data with a primary key

![1NF Example](https://media.geeksforgeeks.org/wp-content/uploads/20231102134515/Normalisation_normalforms_1.jpg)

### 2NF

- Create separate tables for sets of values that apply to multiple records
- Relate these tables with a foreign key

![2NF Example](https://cdn.educba.com/academy/wp-content/uploads/2019/09/Second-Normal-Form-1.png)

### 3NF

- Eliminate fields that do not depend on the key

![3NF Example](https://editor.analyticsvidhya.com/uploads/17533Blank%20board%20(8).jpeg)
