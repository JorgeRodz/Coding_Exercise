a = [3, 8, 9, 7, 6]
a_cycle = 3

b = [0, 0, 0]
b_cycle = 1

c = [1, 2, 3, 4]
c_cycle = 4

def solution(a, k)
  # a.rotate(-k) - this also works
  new_array = Array.new(a.length)

  for i in (0..a.length - 1)
    new_array[(i + k) % a.length] = a[i]
  end

  new_array
end

puts "#{a}, #{a_cycle} = #{solution(a, a_cycle)}"
puts "#{b}, #{b_cycle} = #{solution(b, b_cycle)}"
puts "#{c}, #{c_cycle} = #{solution(c, c_cycle)}"
