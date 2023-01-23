a = 1041
b = 15
c = 32
d = 20
e = 2000

def solution(n)
  binary_number = n.to_s(2)
  count = 0
  result = 0

  for i in (0..binary_number.length - 1)
    count += 1 if binary_number[i + 1] == '0'
    if binary_number[i + 1] == '1'
      result = count if count > result
      count = 0
    end
  end

  result
end

p solution(a)
p solution(b)
p solution(c)
p solution(d)
p solution(e)
