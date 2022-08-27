require 'minitest/autorun'
require_relative 'fizzbuzz_main'

class FizzBuzzTest<Minitest::Test
  def test_fizz_buzz
    assert_equal"1", fizzbuzz(1)
    assert_equal"2", fizzbuzz(2)
    assert_equal"Fizz", fizzbuzz(3)
    assert_equal "4", fizzbuzz(4)
    assert_equal"Buzz", fizzbuzz(5)
    assert_equal"Fizz", fizzbuzz(6)
    assert_equal"7", fizzbuzz(7)
    assert_equal"8", fizzbuzz(8)
    assert_equal "Fizz", fizzbuzz(9)
    assert_equal"Buzz", fizzbuzz(10)
    assert_equal"11", fizzbuzz(11)
    assert_equal"Fizz", fizzbuzz(12)
    assert_equal"13", fizzbuzz(13)
    assert_equal"14",fizzbuzz(14)
    assert_equal"FizzBuzz",fizzbuzz(15)
  end
end