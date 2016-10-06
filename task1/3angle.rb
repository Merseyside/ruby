puts "First side:"
first = gets.chomp.to_i 
puts "Second side:"
second = gets.chomp.to_i 
puts "Third side:"
third = gets.chomp.to_i 

if first == second && first == third
	puts "Равносторонний"
else
	if first == second || second == third
		puts "Равнобедренный"
	end
	max = first
	max = second if second > max
	max = third if third > max
	puts "#{max}"
	if max == first
		left_side = second**2 + third**2
		right_side = first**2
	elsif max == second
		left_side = first**2 + third**2
		right_side = second**2
	else
		left_side = first**2 + second**2
		right_side = third**2
	end
	puts "#{left_side}"
	if left_side == right_side
		puts "Прямоугольный"
	end
end
	
