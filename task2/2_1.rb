hash = {"January" => 31, "February" => 28, "March" => 31, "April" => 30, "May"=>31, "June" => 30, "July" => 31, "August" => 31, "September" => 30, "October" => 31, "November"=> 30, "December" => 31}

puts "Введите дату рождения\n Число:"
day = gets.chomp.to_i

puts "Месяц:"
month = gets.chomp.to_i

puts "Год:"
year = gets.chomp.to_i

count = 0
keys = hash.keys
if year%4 == 0
	hash["February"] = 29
end
for i in 0..month-1
	count += hash[keys[i]]
end
count += day
puts count
