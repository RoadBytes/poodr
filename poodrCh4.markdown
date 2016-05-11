POODR Personal notes on Ch 4

# Ch 4. Creating Flexible Interfaces

* Design is concerned with:
  * What objects know (responsibilities)
  * who they know (dependencies)

* Interface == conversation between objects

## Understanding Interfaces
* constrain visibility between objects

## Defining Interfaces
* Restaurant example
  * menu is public interface

### Public Interfaces
* Reveal its primary responsibility
* invoked by others
* constant, dependable, documented

  * ie a Wheel has a diameter, circumference
  * ie order Pizza

### Private Interfaces
* handle implementation details
* invoked by self
* changing, undependable, not documented

  * ie cut bell peppers and add to pizza

### Responsibilities, Dependencies, and Interfaces

* with single responsibility, it's easy to deduce what's in the public interface (ch 2)
* dependencies relate to changeability (ch 3)

## Finding the Public Interface
* no hard rules

### An Example Application: Bicycle Touring Company


### Constructing and Intention
### Using Sequence Diagrams
### Asking for "What" Instead of Telling "How"
### Seeking Context Independence
### Trusting Other Objects
### Using Messages to Discover Objects
### Creating a Message-Based Application
## Writing Code That Puts Its Best (Inter)Face Forward
### Create Explicit Interfaces
### Honor the Public Interfaces of Others
### Exercise Caution When Depending on Private Interfaces
### Minimize Context
## The Law of Demeter
### Defining Demeter
### Consequences of Violations
### Adding Violations
### Listening to Demeter
## Summary
Object-oriented applications are defined by the messages that pass between them.
