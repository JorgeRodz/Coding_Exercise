# frozen_string_literal: true

# ----- Setup variables -----
third_power = []
expo_num = 4

# ----- Main loop -----
(2...10_000).each do |i|
  digits_array = i.digits
  sum = 0

  digits_array.each do |j|
    sum += j**expo_num
  end

  third_power << i if sum == i
end

# ----- Loop for print the results -----
third_power.each do |i|
  digits_array = i.digits.reverse
  num = "#{i} = "
  line_string = ''
  digits_array.each do |j|
    line_string += "#{j}^#{expo_num} + "
  end

  line_string = line_string[0..-3]
  puts num + line_string
end

# ----- Printing the total sum -----
total_sum = third_power.sum
puts "The numbers that are equal to the sum of the #{expo_num} power of their digits are: #{total_sum}"
