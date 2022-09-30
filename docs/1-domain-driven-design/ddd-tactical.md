---
id: Tactical Patterns
sidebar_position: 0
sidebar_label: Tactical Patterns
---

### Introducing Tactical Patterns
DDD tactical patterns, also known as 'model building blocks', are used to help define static models for complex bounded contexts.
The main patterns and their relationships are illustrated as:

![Tactival Patterns](tactical-pattern-mapping.svg)

| Pattern                           |Description|
|:----------------------------------|:---|
| Entity                            |Defines an object or Noun within a system _that has a unique and fixed identifier_ which can be used for retrieval or query. Being synonomous to Object-Oriented-Development objects, entities contain both attributes and behaviour/business logic (eg depoist/withdrawal methods in a bank account. *It is valid for Identifiers to span across bounded contexts*|
| Value Objects                     |Defines an object within a system **that does not have a unique identifier**. They are immutable; typical examples include colours, dates/times and currency values|
| Aggregates                        |Defines a transactional boundary around one or more entities, where 1 entity is designated as the 'Aggregate Root', and its identifier is used to identify the entire aggregate. Aggregates operate to preserve data integrity of its contained entities; e.g. removing an Order may provide behaviour to remove a contained product, but then include **Invariants**/rules to recalculate totals and credit a customer's account.   |
| Repositories                      |Manage persistence of objects into data stores
| Factories                         |Assist with the creation of new aggregates, where a constructor may not always be enough to deal with required complexity.
| Domain & Application **Services** |Services are used to provide business functionailty that spans 2 or more entities; ie to provide behaviour that 1 entity cannot provide alone.|

In addition to these main patterns we also describe

| Pattern                          |Description|
|:---------------------------------|:---|
| Domain Events                    |These can be used to notify other system components when something happens; e.g. an order is cancelled; which should also be communicated across payment, fulfillment, and  loyalty domains.|
| Domain Model                     |As defined by Martin Fowler's 'Patterns of Enterprise Application Architecture', this is represented by an object-oriented model rather than being data-driven, as described further below in Domain Layers.|
| Anemic and Rich Models           |Anemic domain models are defined as an 'Anti-Pattern' by Fowler, whereby objects ar edefined with attributes but very little behaviour; ie to more resemble Data Transfer Objects (DTO's). The anaemic model rather promotes the addition of business into Services. The result is that rather than following Object Oriented Design principals, business logic and data transforamtions becomes procedural. Rich models in contrast promote the use of services for providing only logic that spans mutliple entities

Each of these are described in relation to The Better Store next.


### Example: Order Bounded Context
The Order bounded context is examined here to illustrate a service design using the above patterns.

Its DDD strategic design described in the previous section has provided the following:

1. BDD Features
   1. PurchaseProductsInCartFeature; order-related scenarios include:
      1. @ConfirmOrder; an Order consists of Products and their quantities in the cart, the Customer and associated
       email address, delivery address and shipping cost (of order contains physical products). The customer is directed to the payment system for completion here.
      2. 

High-Level Bounded Context Class Diagram

![OrdersContext](tactical-order.svg)
    
### Domain Layers
![Layers](ddd-onion-architecture.svg)

| Layer           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
|:----------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Application     | Application services are used to expose domain logic to the presentation layer via Data Transfer Objects (dto's), which may be also be known as View Models (VM's). Application services typically use both domain services and repositories to deal with external requests.                                                                                                                                                                                                                                           |
| Infrastructure  | As defined by Martin Fowler's 'Patterns of Enterprise Application Architecture', this is represented by an object-oriented model rather than being data-driven, as described further below in Domain Layers.                                                                                                                                                                                                                                                                                                           |
| Domain Services | Domain services are used to perform domain operations and business rules that span across multiple entities ;i.e. those that o not naturally fit within a single domain entity. Unlike application services, domain services return domain objects                                                                                                                                                                                                                                                                                                                                        
| Domain Model    | Anemic domain models are defined as an 'Anti-Pattern' by Fowler, whereby objects ar edefined with attributes but very little behaviour; ie to more resemble Data Transfer Objects (DTO's). The anaemic model rather promotes the addition of business into Services. The result is that rather than following Object Oriented Design principals, business logic and data transforamtions becomes procedural. Rich models in contrast promote the use of services for providing only logic that spans mutliple entities 
