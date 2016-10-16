class PassangerTrain < Train
	def initialize(number)
		super
	end

	def add_carriage(carr)
		if carr.class.name == "PassangerCarriage"
			super
		end
	end 

end