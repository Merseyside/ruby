class CargoTrain < Train
	def initialize(number)
		super
	end

	def add_carriage(carr)
		if carr.class.name == "CargoCarriage"
			super
		end
	end 

end