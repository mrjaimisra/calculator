# calculator

## What it is:

A calculator can do simple math operations, and this one is the simplest. Designed to introduce very early level beginners to some core programming concepts.

## Core Concepts

+ Basic Ruby syntax
+ Declaring Objects and Defining Methods
+ Instantiating Objects and Calling Methods
+ Variables (Instance, Local)
+ Object Oriented Programming (OOP)
+ Test Driven Design/Development (TDD)
+ Naming conventions (snake_case vs. CamelCase)
+ Requiring files and libraries
+ Running programs and executing code on the command line

## Helpful Resources:

[Ruby in 100 minutes](http://tutorials.jumpstartlab.com/projects/ruby_in_ 100_minutes.html) by Jeff Casimir of the Turing School. Just a really good overview of the Ruby language.

[How to Use MiniTest](http://blog.teamtreehouse.com/short-introduction-minitest) by Jason Seifer on Treehouse. Gives an example of a MiniTest file and how to run tests. The `calculator_test.rb` file was based off this template.

[MiniTest ruby-docs](http://ruby-doc.org/stdlib-2.0.0/libdoc/minitest/rdoc/MiniTest.html) This is the official documentation page for MiniTest on the Ruby Docs website. If you are really curious and want to practice reading documentation, these docs are not too daunting.

## Using this Repo

From the command line, `cd` into the directory in which you would like to install the calculator project. run the following command to download the project from github:

`git clone https://github.com/mrjaimisra/calculator.git`

To use the calculator, run:

`ruby calculator.rb`

Follow the instructions in the prompt. Have fun! :)

## Objective

The goal of the beginning programmer who clones this repo should be to complete the project by making the tests pass. In order to do this, you should complete the unfinished code in the `calculator.rb` file.

In the file you will see one **class**:

*Calculator*

that contains four **methods**:

1. #add
1. #subtract
1. #multiply
1. #divide

The *Calculator*#add method is complete, but the others are not. Use the `calculator_test.rb` file as your guide by following the procedure for running tests described in the next section.

Basically, we are playing a simple game of **make-the-tests-pass**. Once they have all passed you have a working calculator!

## The Runner

`calculator_runner.rb` is the runner for the calculator file. This file contains one class *CalculatorRunner* with one method **calculate**. The #puts method call prints the words of the prompt to the screen. The #gets.chomp method call waits for the user to enter text input from the command line and collects that input.

This line of code at the bottom of the `calculator.rb` file loads the user interface and runs the calculator when you execute the program in the terminal:

`runner.calculate`

If you remove that line, or the one above it (`runner = CalculatorRunner.new`), the program will stop working.

Similarly, if you remove the line at the top of `calculator.rb` that reads:

`require './calculator_runner.rb'`

then the program will no longer know how to load the prompt and the user interface from the command line, and it will stop working.

## Running Tests

First, navigate (`cd`) into root directory of the project folder.

> If you need to make sure that you are in the right directory, you can use the command `ls` to list the files in the current directory. Also, the `pwd` command will print the name of the directory wherein you are currently located.

To run the tests from the command line, enter:

`ruby calculator_test.rb`

After running the command above in the terminal, you should see four dots (....) representing each of the tests in the `calculator.rb` file.

Below that, you should see a list the tests that failed to pass along with an explanation of why they failed

Completing the methods in the `calculator.rb` file should make the tests pass. Try to make them all pass and then add your own custom tests.

## Changing and Adding to Tests

All of the tests are contained within the `calculator_test.rb` file. The code for each of the existing tests is complete, but feel free to write more tests or add more assertions to the existing test methods.

For example, to add another assertion line, you could write:

`assert_equals(actual_result, expected_result)`

Then fill in the `actual_result` and `expected_result` variables with numbers of your choice and run the test file.

## Enhancing your calculator

There are obvious shortcomings to this simple calculator implementation. For one, you can only add, subtract, multiply, or divide two numbers. In order to change that, we would need to alter the way that we pass in **arguments** or **parameters** to the methods contained within the *Calculator* class in the `calculator.rb` file.

For example, you will see that the #add method takes two arguments, *number_one* and *number_two*. If we wanted to change that, we would have the change those two arguments to something more flexible.

Instead of the current #add method, which reads:

`def add(number_one, number_two)
  number_one + number_two
end`

we could change it to:

`def add(numbers)
  number_one + number_two
end`

and then pass in an **array** of numbers instead of two fixed numbers. An array is a simple collection of objects in Ruby. For more about arrays, check out [Ruby in One Hundred Minutes](http://tutorials.jumpstartlab.com/projects/ruby_in_ 100_minutes.html) referenced in the **Helpful Resources** section, or the [Ruby Docs on Arrays](http://ruby-doc.org/core-2.3.1/Array.html).

## Notes for Programmers

There are several elements of the program that could be DRYed up, refactored, made semantically more explicit or syntactically less verbose. My goal was not to write a beautiful implementation of a calculator.

Rather, my objective is to write code that is easy to read for beginners. In order to maximize beginner readability, I violated some of the principles of Object Oriented Design that I am attempting to convey. I intentionally chose simpler constructions where more advanced ones might serve, wrote a big long method, and gave things silly names. My premise is that the readability concerns of absolute beginners are different from those of expert Rubyists.

Before I give people a lot of rules, I want to show them why the rules were created in the first place by breaking them and allowing people to feel okay about breaking them as well.
