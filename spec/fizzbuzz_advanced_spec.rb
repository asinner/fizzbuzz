require 'spec_helper.rb'
require 'fizzbuzz_advanced'

describe FizzbuzzAdvanced do
  before do
    @f = FizzbuzzAdvanced.new('values.csv')
  end

  it 'should parse the values file' do
    assert_equal(@f.values, '3' => 'Fizz', '5' => 'Buzz', '7' => 'Sivv')
  end

  it 'should return 1 for 1' do
    assert_equal(@f.buzz(1), 1)
  end

  it 'should return 2 for 2' do
    assert_equal(@f.buzz(2), 2)
  end

  it 'should return "Fizz" 3' do
    assert_match(@f.buzz(3), 'Fizz')
  end

  it 'should return "Buzz" for 5' do
    assert_match(@f.buzz(5), 'Buzz')
  end

  it 'should return "Siv" for 7' do
    assert_match(@f.buzz(7), 'Sivv')
  end

  it 'should return "FizzBuzz" for 15' do
    assert_match(@f.buzz(15), 'FizzBuzz')
  end

  it 'should return "FizzSiv" for 21' do
    assert_match(@f.buzz(21), 'FizzSivv')
  end

  it 'should return "BuzzSiv" fo 35' do
    assert_match(@f.buzz(35), 'BuzzSivv')
  end

  it 'should return "FizzBuzzSivv" for 105' do
    assert_match(@f.buzz(105), 'FizzBuzzSivv')
  end

  it 'should return 106 for 106' do
    assert_equal(@f.buzz(106), 106)
  end
end
