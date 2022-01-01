require './generalMethods.rb'

def squareOrReverse
  print "Введите число: "
  number = gets
  if argumentError?(number)
    puts "Неверное число"
    return 'error'
  end
  print "Введите слово: "
  word = gets.chomp
  number = number.to_i
  if word[-2, 2] == "CS"
    res = number**2
    puts res
  else
    res = word.reverse
    puts res
  end
  res
end

def addPokemonToArray
  print "Введите количество покемонов, которых хотите добавить: "
  pokeNum = gets
  if argumentError?(pokeNum)
    puts "Неверное число"
    "error"
  else
    pokeNum = pokeNum.to_i 
    res = getPokemons(pokeNum)
    putPokemons(res)
    res
  end
end

def getPokemons(count)
  res = []
  for i in (1..count)
    puts "Введите название покемона"
    name = gets.chomp
    puts "Введите цвет покемона"
    color = gets.chomp
    res.push({name: name, color: color})
  end
  res
end

def putPokemons(pokeArr)
  puts "Pokemons in array"
  pokeArr.each do |pokemon|
    puts "name: #{pokemon[:name]}, color: #{pokemon[:color]}"
  end
end

squareOrReverse
addPokemonToArray