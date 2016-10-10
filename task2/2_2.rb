product = ""
hash = Hash.new
while product != "стоп" do
	puts "Товар: "
	product = gets.chomp
	if product!="стоп"

		puts "Цена: "
		price = gets.chomp.to_i

		puts "Количество: "
		count = gets.chomp.to_i

		hash[product] = {price => count}
	end
end

total = 0;
hash.each do |key, value|
	value.each do |price, count|
		puts "#{key}: #{price}руб #{count} штук"
		total+=price*count
	end
end
puts "Итоговая сумма #{total}"

