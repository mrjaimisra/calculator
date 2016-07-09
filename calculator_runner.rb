require './calculator.rb'

class CalculatorRunner
  def calculate(calculator)
    puts "Choose an operation: ADD (a), SUBTRACT (s), MULTIPLY (m), DIVIDE (d)"

    operation = gets.chomp

    puts "Enter a number"

    number_one = gets.chomp.to_f

    puts "Enter another number"

    number_two = gets.chomp.to_f

    if operation == 'a'
      result = calculator.add(number_one, number_two)
    end

    if operation == 's'
      result = calculator.subtract(number_one, number_two)
    end

    if operation == 'm'
      result = calculator.multiply(number_one, number_two)
    end

    if operation == 'd'
      result = calculator.divide(number_one, number_two)
    end

    puts "The result is #{result}"
  end
end

calc   = Calculator.new
runner = CalculatorRunner.new(calc)

runner.calculate
