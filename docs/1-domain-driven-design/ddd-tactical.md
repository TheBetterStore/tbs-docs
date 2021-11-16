---
id: Tactical Patterns
sidebar_position: 0
sidebar_label: Tactical Patterns
---

### Introducing Tactical Patterns
DDD tactical patterns, also known as 'model building blocks', are used to help define static models for complex bounded contexts.

|Pattern|Description|
|:---|:---|
|Entity|Defines an object or Noun within a system _that has a unique and fixed identifier_ which can be used for retrieval or query. Being synonomous to Object-Oriented-Development objects, entities contain both attributes and behaviour/business logic (eg depoist/withdrawal methods in a bank account. *It is valid for Identifiers to span across bounded contexts*|
|Value Objects|Defines an object within a system **that does not have a unique identifier**. They are immutable; typical examples include colours, dates/times and currency values|
|Aggregates|Defines a transactional boundary around one or more entities, where 1 entity is designated as the 'Aggregate Root', and its identifier is used to identify the entire aggregate. Aggregates operate to preserve data integrity of its contained entities; e.g. removing an Order may provide behaviour to remove a contained product, but then include **Invariants**/rules to recalculate totals and credit a customer's account.   |
|Domain & Application **Services**|Services are used to provide business functionailty that spans 2 or more entities; ie to provide behaviour that 1 entity cannot provide alone.|
|Domain Events|These can be used to notify other system components when something happens; e.g. an order is cancelled; which should also be communicated across payment, fulfillment, and  loyalty domains. |
|Domain Model|As defined by Martin Fowler's 'Patterns of Enterprise Application Architecture', this is represented by an object-oriented model rather than being data-driven, as described further below in Domain Layers. |

Each of these are dscribed in relation to The Better Store next.


### Example: Order Bounded Context
The Order bounded context is examined here to illustrate a service design using the above patterns.

Its DDD strategic design described in the previous section has provided the following:

1. BDD Features
   1. PurchaseProductsInCartFeature; order-related scenarios include:
      1. @ConfirmOrder; an Order consists of Products and their quantities in the cart, the Customer and associated
       email address, delivery address and shipping cost (of order contains physical products). The customer is directed to the payment system for completion here.
      2. 




###Domain Layers

![layers.svg](layers.svg)
