---
id: Overview
sidebar_position: 0
sidebar_label: Overview
---

Domain Driven Design is a methodology that is aimed at managing complexity of problem domains, into 
suitably-sized and well-organised definitions of objects and business rules  that may be understood by 
both business stakeholders and technical staff for easier design of software. This is in-contrast to the
defined 'Big Ball of Mud' pattern (coined by Foote & Yolder), which describes haphazardly-structured, spaghetti-code 
that can easily-arise as code evolves over time with little design or standard constraints. 

Domain-driven design is aimed at promoting design quality via the following:


* [Strategic Patterns](ddd-strategic.md)
  Used to distill the problem domain by providing the following:
  * Identifying the 'Core domain'; the area of the system that deserves the most attention by the business; for
  example that provides a business with its competitive edge. 
  This is in-contrast to areas that provide supporting-features only, or could be provided by COTS software
  * Defining a Ubiquitous Language (UL), that describes entities and business rules within the system that are
  understood by both business and technical staff.

* [Tactical Patterns](ddd-tactical.md)
