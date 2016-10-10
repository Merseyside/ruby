
=begin
ПОЧЕМУ ЭТО НЕ РАБОТАЕТ?7???
hash = {"January"=>31, "February" => 28, "March" => 31,"April" => 30, "May" => 31, "June" => 30, "July" => 31, "August" => 31, "September" => 30, "October" => 31, "November" => 30, "December" => 31}
=end

hash = {"January" => 31, "February" => 28, "March" => 31, "April" => 30, "May"=>31, "June" => 30, "July" => 31, "August" => 31, "September" => 30, "October" => 31, "November"=> 30, "December" => 31}
puts hash.map{ |k,v| v==30 ? k : nil }.compact

array = Array.new((100-5)/5){|index| (index+2) * 5 }

array = [0, 1]
result = array[0] + array[1]
i = 2
begin
	result = array[-1] + array[-2]
	array.push(result)
end while result < 100
array.pop
puts "#{array}"

range = ("a".."z")
i = 1
hash = Hash.new(range.size)
range.each do |sym|
	hash[sym] = i
	i+=1
end

puts "#{hash}"

