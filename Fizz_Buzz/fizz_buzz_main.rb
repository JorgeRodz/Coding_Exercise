# frozen_string_literal: true

# Main class
class FizzBuzz
  attr_accessor :start_at, :end_at

  attr_reader :arr_of_result

  def initialize(begin_number, end_number)
    @start_at = begin_number
    @end_at = end_number
    @arr_of_result = fill_up_array_of_results
  end

  def print
    p arr_of_result
  end

  private

  def calculate(number)
    return 'FizzBuzz' if (number % 3).zero? && (number % 5).zero?

    return 'Fizz' if (number % 3).zero?

    return 'Buzz' if (number % 5).zero?

    number
  end

  def fill_up_array_of_results
    results = []
    (start_at..end_at).each do |number|
      results << calculate(number)
    end
    results
  end
end

one_to_hundred = FizzBuzz.new(1, 100)
one_to_hundred.print
puts
puts "FizzBuzz: #{one_to_hundred.arr_of_result.count('FizzBuzz')}"
puts "Fizz: #{one_to_hundred.arr_of_result.count('Fizz')}"
puts "Buzz: #{one_to_hundred.arr_of_result.count('Buzz')}"
