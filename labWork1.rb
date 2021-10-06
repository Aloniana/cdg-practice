require './generalMethods.rb'

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
  firstNum = gets
  print "Введите второе число = "
  secondNum = gets
  if argumentError?(firstNum, secondNum)
    puts "Неверное число"
    return 'error'
  end
  firstNum = firstNum.to_i
  secondNum = secondNum.to_i
  if firstNum == 20 
    print "Второе число = "
    puts secondNum
    secondNum
  elsif secondNum == 20
    print "Первое число = "
    puts firstNum
    firstNum
  else 
    print "Первое число + второе число = "
    puts firstNum + secondNum
    firstNum + secondNum
  end
end

#greeting
foobar