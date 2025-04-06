---
id: Overview
sidebar_position: 0
sidebar_label: Overview
---

The previous sections have provided introductions to Domain Driven Design principles, and how they may be used for 
defining an appropriate Microservice Architecture for our sample 'The Better Store' cloud-native ECommerce system.
This section continues from the proposed DDD tactical design to formulate an implementation of our decomposed microservices, 
while describing and adopting popular cloud-native patterns to reap advantages that they provide.

The focus here will be defining an implementation which has the following features scope, as defined in the previous Strategic Patterns section:
* [CheckoutProductsInCart.feature](./../1-domain-driven-design/bdd/CheckoutProductsInCart.feature.md)
  * **Scenario 1**: OrderPurchased

    **When** I submit valid Card details

    **And** Payment is approved

    **Then** My order details with cart details will be stored in the Order Repository

    **And** The order details will be eventually persisted to the reporting database

    **And** An electronic Receipt will be emailed to me

    **And** A shipping order is sent for Fulfillment

    **And** I will be directed back to the store's home page, with a notice confirming the order number.

This logical flow is represented by the following:

![Confirm and Fulfill Order ](HLDViewOrderReports.svg)

So now that we have identified the resources and required interactions between them for implementing flows, we need to
determine exactly how to implement these in a way that provides optimal scalability, resilience and performance while
considering cost, while using AWS as the platform of choice. Some questions that we could start ask ourselves while looking at the
above high-level implementation designs:
1. What is the best website hosting technology to use, given the following requirements:
  1. Frontend being developed using modern-frameworks with a Single-Page-Application (SPA) static implementation, such as Angular.
  2. Best use of AWS services to provide a global-scale performant, cost-effective and resilient architecture
  3. Effective integration of user authentication and authorization at both the frontend and backend services.
2. What is the best backend hosting technology to use for compute and data services that quickly scale on-demand, can be easily scaled
   across regions for a global implementation, are resilient, provide cost optimization for both development and production environments in terms of compute and operational/maintenance costs.
3. What are the best methods for enabling communications between services and data stores which provide scalability, resilience and
   cost optimization that accommodate both development and production environments?
4. What are the best methods for managing transactions and errors?

For answering these questions, we will consider the following:
1. Microservice Architecture patterns. A great resource for referencing popular Microservice Architecture patterns has been published by Chris Richardson at,
2. Candidate AWS ServicesError Handling
3. Error Handling

Next: [Microservice Architecture Patterns:](msa-architecture-patterns.md)
