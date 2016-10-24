class PassangerTrain < Train
	def initialize(number)
		super
	end

	def add_carriage(carr)
		begin
			if carr.class.name != "PassangerCarriage"
				raise ArgumentError.new("Only passanger carriages can be added to the train")
			else
				super
			end
			rescue Exception => msg
				puts "#{msg}."
		end
	end 

end