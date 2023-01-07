# frozen_string_literal: true

# Main class
class FizzBuzz
  attr_accessor :start_at, :end_at

  attr_reader :arr_of_result_one, :arr_of_result_two

  def initialize(begin_number, end_number)
    @start_at = begin_number
    @end_at = end_number
    @arr_of_result_one = stage_one
    @arr_of_result_two = stage_two
  end

  def print_one
    p arr_of_result_one
  end

  def print_two
    p arr_of_result_two
  end

  private

  def calculate_stage_one(number)
    return 'FizzBuzz' if (number % 3).zero? && (number % 5).zero?

    return 'Fizz' if (number % 3).zero?

    return 'Buzz' if (number % 5).zero?

    number
  end

  def stage_one
    results = []
    (start_at..end_at).each do |number|
      results << calculate_stage_one(number)
    end
    results
  end

  def calculate_stage_two(number)
    result = ''

    result += 'Fizz' if (number % 3).zero?
    result += 'Fizz' if number.to_s.include?('3')
    result += 'Buzz' if (number % 5).zero?
    result += 'Buzz' if number.to_s.include?('5')

    return result unless result.empty?

    number
  end

  def stage_two
    results = []
    (start_at..end_at).each do |number|
      results << calculate_stage_two(number)
    end
    results
  end
end

one_to_hundred = FizzBuzz.new(1, 100)
one_to_hundred.print_one
puts
one_to_hundred.print_two
# puts
# puts "FizzBuzz: #{one_to_hundred.arr_of_result_one.count('FizzBuzz')}"
# puts "Fizz: #{one_to_hundred.arr_of_result_one.count('Fizz')}"
# puts "Buzz: #{one_to_hundred.arr_of_result_one.count('Buzz')}"
