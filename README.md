README
===
Approach:
---
I can determine that some number x is a multiple of some number y if x / y returns some integer with no remainder.
Using this approach, I divided the argument by the quantity 3 using the modulo operator, and compared the return value (remainder) for equality with zero (meaning I checked if the remainder was zero). If it was I set a variable name divisible_by_three to true, otherwise I left it nil. 
Using this technique did the same for the quantity 5 (using the variable divisible_by_five to store the truth of the comparison).
Then using a control structure I checked if divisible_by_three and divisible_by_five were true. If they were, I returned the string "FizzBuzz".
If that failed I checked if divisible_by_three was true and returned "Fizz" if it was. If that failed I checked if divisible_by_five was true and returned "Buzz" if it was.
If none of the above checks returned true, I simply returned the number