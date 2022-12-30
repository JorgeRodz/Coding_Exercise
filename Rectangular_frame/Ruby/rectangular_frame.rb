puts 'Ingresa una frase: '

# ------------------------------------------------------
frase = gets.chomp
# ------------------------------------------------------
if ['""', ''].include?(frase)
  print '*' * 4
  print "\n"
  print '*  *'
  print "\n"
  print '*' * 4
  print "\n"
  exit 0
end
# ------------------------------------------------------
frase_array = frase.split(' ')
# longest_word = words.max_by { |word| word.length }
longest_word = frase_array.max_by(&:length) # This lines does the same as the above line
frame_height = frase_array.length + 2

frase_array.map! do |word|
  word += ' ' * (longest_word.length - word.length)
  "* #{word} *"
end
# ------------------------------------------------------
frame_height.times do |i|
  if i.zero? || i == frame_height - 1
    print '*' * (longest_word.length + 4)
  else
    print frase_array[i - 1]
  end
  print "\n"
end
