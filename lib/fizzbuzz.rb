def fizzbuzz(number)
  result = ''
  check = { '3' => 'Fizz', '5' => 'Buzz' }
  check.each do |k, v|
    result << v if number % k == 0
  end
  result.empty? ? number : result
end
