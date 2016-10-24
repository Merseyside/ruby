require_relative "Company.rb"

class CargoTrain < Train
	include Company

	def initialize(number)
		super
	end

	def add_carriage(carr)
		begin
			if carr.class.name != "CargoCarriage"
				raise ArgumentError.new("Only cargo carriages can be added to the train")
			else
				super
			end
			rescue Exception => msg
				puts "#{msg}."
			
		end
	end 

end