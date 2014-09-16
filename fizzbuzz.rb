def fizzbuzz number  
  divisible_by_three = true if number % 3 == 0
  divisible_by_five = true if number % 5 == 0
  
  if divisible_by_three && divisible_by_five
    "FizzBuzz"
  elsif divisible_by_three
    "Fizz"
  elsif divisible_by_five
    "Buzz"
  else
    number
  end
end