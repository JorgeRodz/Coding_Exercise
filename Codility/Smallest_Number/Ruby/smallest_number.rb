# Description: Find the smallest positive integer that does not occur in a given sequence.

a = [1, 3, 6, 4, 1, 2] # 5
b = [1, 2, 3] # 4
c = [-1, -3] # 1

def solution(a)
  result = 1
  a.sort!
  for i in (0..a.length)
    result += 1 if a[i] == result
  end
  result
end

p solution(a)
p solution(b)
p solution(c)
