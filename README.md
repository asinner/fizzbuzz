# README
## Approach for Fizzbuzz 1:
Using the following boolean expression I can determine whether some number `x` is a multiple of some number `y`. 
```
x % y == 0
```
Since a multiple will divide evenly (meaning there is no remainder) I can use the modulo operator `%` to get the remainder of `x` divided by `y`. If that remainder is equal to zero, I know that `x` is a multiple of some quantity `y`. Using this approach, I assigned two variables `divisible_by_three` and `divisible_by_five` the value  `true` if the boolean expression returned true for the quantities 3 and 5 respectively.

Using a control structure the method checks whether the conditions `divisible_by_three` and `divisible_by_five` are `true` and returns "FizzBuzz". If `false`, the method then checks whether `divisible_by_three` is `true` and returns "Fizz". If `false`, the method then checks whether `divisible_by_five` is `true` and returns "Buzz". If both variables return `false` together and individually (meaning the number is divisible by neithed 3 and/or 5) then the argument itself is simply returned.  
## Approach for Fizzbuzz 2:
First I noted that the client wanted the ability to add their own numbers. This meant that if the client wanted `30` to output `Grr` they should be able to add it somewhere without having to touch the codebase. So I created a `values.csv` file in the root folder. As a result, if the client has a new requirement, they simply add a their number and output on a newline with in the following format `number,output` (notice the comma separated values).
Now that the client has a way to add their own number and output, the Fizzbuzz method had to be abstracted enough to handle a variable amount of number and output combinations. I followed by deciding how I wanted to implement fizzbuzz.
I implemented Fizzbuzz by declaring the `FizzbuzzAdvanced` class. I decided that in order to get started with Fizzbuzz, the FizzbuzzAdvanced class should be instantiated with `f = FizzbuzzAdvanced.new(filename)` where `filename` is the name of the file where the number-output values should be read from(`values.csv` in this example). 
````ruby
def initialize(file)
  @values = {}
  File.open(file).each do |line|
    k, v = line.split(',')
    values[k.gsub(/\s+/, '')] =
      v.gsub(/\s+/, '') # Eliminate spaces, newlines, etc
  end
end
````
What this does is read the given file line-by-line and stores a hash in an attribute of each number-to-output combination.
Then, in order to calculate a number and get the appropriate output the `buzz` method should be called on the newly created `FizzbuzzAdvanced` object `f'. 
Example: `f.buzz(5)`. 
I chose `buzz` as the method name because it was just as vague as `calculate` or `analyze` and it sounded better.
Also, I chose to replace any possible whitespace using the `.gsub(/\s+/, '')` method.
The `buzz` method is as follows:
````ruby
def buzz(n)
  result = ''
  values.each do |k, v|
    result << v if n % k.to_i == 0
  end
  result.empty? ? n : result
end
````
The `buzz` method starts with an empty string.
It then iterates through the values attribute dealing passing each number-to-output combination to the block.
The output is appended to the result if `n` (the number we passed to buzz) is a multiple of `k` (the number the client specified). *Notice:* the `.to_i` method is called on `k` because it is originally stored as string in the hash but cannot be used in a mathematical operation unless it is an integer.
Finally, the result is returned unless it is empty in which case the `n` that was passed to buzz is simply returned.
 