p 'Enter first num'
input1 = gets.chomp
p 'Enter second num'
input2 = gets.chomp
p 'What do you want?'
input3 = gets.chomp
p 'Your result'
result = eval("#{input1} #{input3} #{input2}")
p result
