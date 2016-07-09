require 'minitest/autorun'
require 'minitest/pride'
require './calculator.rb'

class CalculatorTest < Minitest::Test
  def setup
    @calc = Calculator.new
  end

  def test_add
    sum = @calc.add(1, 2)

    assert_equal(3, sum)
  end

  def test_subtract
    minuend    = 1000
    subtrahend = 100

    difference = @calc.subtract(minuend, subtrahend)

    assert_equal(900, difference)
  end

  def test_multiply
    x = 5
    y = 4
    product = @calc.multiply(x, y)

    assert_equal(20, product)
  end

  def test_divide
    a          = 77
    rhinoceros = 7
    the_number_that_you_get_when_you_divide_things =

    divide(a, rhinoceros)

    assert_equal(10, the_number_that_you_get_when_you_divide_things)
  end
end
