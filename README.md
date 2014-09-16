README
===
Approach:
---
Using the following boolean expression I can determine whether some number `x` is a multiple of some number `y`. 
```
x % y == 0
```
Since a multiple will divide evenly (meaning there is no remainder) I can use the modulo operator `%` to get the remainder of `x` divided by `y`. If that remainder is equal to zero, I know that `x` is a multiple of some quantity `y`. Using this approach, I assigned two variables `divisible_by_three` and `divisible_by_five` the value  `true` if the boolean expression returned true for the quantities 3 and 5 respectively.

Using a control structure the method checks whether the conditions `divisible_by_three` and `divisible_by_five` are `true` and returns "FizzBuzz". If `false`, the method then checks whether `divisible_by_three` is `true` and returns "Fizz". If `false`, the method then checks whether `divisible_by_five` is `true` and returns "Buzz". If both variables return `false` together and individually (meaning the number is divisible by neithed 3 and/or 5) then the argument itself is simply returned.  
