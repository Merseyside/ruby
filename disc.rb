puts "Input A"
a = gets.chomp.to_i

puts "Input B"
b = gets.chomp.to_i

puts "Input C"
c = gets.chomp.to_i

d = b**2 - 4*a*c
puts "#{d}"
if d < 0
	puts ("d < 0 => no roots")
elsif d == 0
	puts "x1 = #{-b / 2*a}"
else
	puts "x1 = #{(-b + Math.sqrt(d)) / 2*a} x2 = #{(-b - Math.sqrt(d)) / 2*a}" 
end
	
	
