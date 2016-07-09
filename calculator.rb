require './calculator_runner.rb'

class Calculator
  def add(number_one, number_two)
    number_one + number_two
  end

  def subtract(number_one, number_two)
  end

  def multiply
  end

end

runner = CalculatorRunner.new
runner.calculate
