[Week 5 Home](../)

# U2.W5: Implement a Reverse Polish Notation calculator


## Learning Competencies
- Decompose a problem into smaller, easier to solve components
- Manipulate and access data within data structures
- Find and use built-in Ruby methods to solve challenges

## Summary
Create an `RPNCalculator` class which can evaluate expressions written in [Reverse Polish notation](http://en.wikipedia.org/wiki/Reverse_Polish_notation).

It should have an `evaluate` instance method which takes as its input a valid RPN expression and returns its evaluation.  Your calculator only needs to handle addition, multiplication, and subtraction (not division).

Operators and numbers should be separated by a single space.

For example,

```ruby
calc = RPNCalculator.new

calc.evaluate('1 2 +')   # => 3
calc.evaluate('2 5 *')   # => 10
calc.evaluate('50 20 -') # => 30

# The general rule is that 'A B op' is the same as 'A op B'
# i.e., 5 4 - is 5 - 4.
calc.evaluate('70 10 4 + 5 * -') # => 0
```

## Release 0: Run the Tests
 
## Release 1: Translate the tests
Translate at least 3 of the tests into [Driver Test Code](../../references/driver_code.md) and include it in the driver code section. If the tests are failing to catch a problem, try writing your own driver test code for it. 

## Release 2: [Pseudocode](../../references/pseudocode.md)

## Release 3: [Initial Solution](../../references/initial_solution.md)

## Release 4: [Refactored Solution](../../references/refactoring.md)

## Release 5: [Reflect](../../references/reflection_guidelines.md)

## Release 6: Sync your changes (push your solution) to Github

## Release 7: [Review](../../references/review.md)