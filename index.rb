require "./food"
require "./drink"


drink1 = Drink.new(name:"コーラ",price:150, amount:500)
drink2 = Drink.new(name:"お茶",price:150, amount:500)
food1 = Food.new(name:"そば",price:680, calorie:1000)
food2 = Food.new(name:"うどん",price:680, calorie:1500)

menus = [drink1,drink2,food1,food2]

index = 0
menus.each do |menu|
  puts  "#{index}:#{menu.info}"
  index += 1 
end

puts "---------"
puts '何番にしますか'

number = gets.chomp.to_i

order = menus[number]

puts "#{order.name}ですね"
puts "何個にしますか?（3個以上で100円引きです）"
puts "日曜日は2割引きです"

count = gets.chomp.to_i

puts "お会計は全部で#{order.get_total_count(count)}円になります"
