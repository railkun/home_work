list = []

p 'Hello it is you to do list '
p 'Press a to add task'
task_name = gets.chomp
if task_name == 'a'
  p 'Write your task'
  task_a = gets.chomp
  list.push(task_a)
elsif task_name == ''
  p 'syntax error'
end

loop do
  p list
  p 'If you want exit press e'
  p 'You can add new task or delete old task'
  p 'If you want add task press a , if you want delete press d'
  task_name1 = gets.chomp
  if task_name1 == 'a'
    p 'Write your task'
    task_a = gets.chomp
    list.push(task_a)
  elsif task_name1 == 'd'
    p 'What task you want delete'
    p list
    task_d = gets.chomp
    list.delete(task_d)
  elsif task_name1 == 'e'
    p 'Bye'
  elsif task_name1 == ''
    p 'syntax error'
  end
  break if task_name1 == 'e'
end
