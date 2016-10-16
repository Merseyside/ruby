require_relative "Company.rb"

class CargoTrain < Train
	include Company

	def initialize(number)
		super
	end

	def add_carriage(carr)
		if carr.class.name == "CargoCarriage"
			super
		end
	end 

end