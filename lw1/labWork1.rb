require '../generalMethods.rb'

def greeting
  print "Введите свое имя: "
  name = gets.chomp
  print "Введите свою фамилию: "
  surname = gets.chomp
  print "Введите свой возраст: "
  age = gets.to_i
  if age <= 0 
    puts "Неверный возраст"
    return 'error'
  end
  if age < 18
    puts "Привет, #{name} #{surname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
  else
    puts "Привет, #{name} #{surname}. Самое время заняться делом!"
  end
  [name, surname, age]
end

def foobar
  print "Введите первое число = "
  first_num = gets
  print "Введите второе число = "
  second_num = gets
  if int_argument_error?(first_num, second_num)
    puts "Неверное число"
    return 'error'
  end
  first_num = first_num.to_i
  second_num = second_num.to_i
  if first_num == 20 
    print "Второе число = "
    puts second_num
    second_num
  elsif second_num == 20
    print "Первое число = "
    puts first_num
    first_num
  else 
    print "Первое число + второе число = "
    puts first_num + second_num
    first_num + second_num
  end
end

#greeting
foobar