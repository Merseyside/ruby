puts "What is your name?"
name = gets.chomp

puts "What is your height?"
height = gets.chomp.to_i

height - 110

if height - 110 < 0
	puts "Your weight is optimal"
else
	puts "#{name}, optimal weight is #{height - 110}"
	end 
