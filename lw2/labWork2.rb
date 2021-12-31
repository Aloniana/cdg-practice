require '../generalMethods.rb'

def square_or_reverse
  print "Введите число: "
  number = gets
  if int_argument_error?(number)
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

def add_pokemon_to_array
  print "Введите количество покемонов, которых хотите добавить: "
  poke_num = gets
  if int_argument_error?(poke_num)
    puts "Неверное число"
    "error"
  else
    poke_num = poke_num.to_i 
    res = get_pokemons(poke_num)
    put_pokemons(res)
    res
  end
end

def get_pokemons(count)
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

def put_pokemons(poke_arr)
  puts "Pokemons in array"
  poke_arr.each do |pokemon|
    puts "name: #{pokemon[:name]}, color: #{pokemon[:color]}"
  end
end

# square_or_reverse
add_pokemon_to_array