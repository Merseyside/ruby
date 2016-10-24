class Route

	@route = []
	@valid = false;

	def initialize(start, end1)
		begin
			if start.class.name!="Railway" or end1.class.name!="Railway"
				raise ArgumentError.new("You must set a number")
			end
			rescue Exception => msg
				puts "#{msg}. Please input correct information"
				return
		end
		@route = [start, end1]
		@valid = true
	end

	def valid?
		@valid
	end

	def add_station(station, pos)
		if pos <= @route.size && pos != 0
			@route.insert(pos, station)
			puts "Complete!"
		else 
			puts "Wrong input."
		end
	end

	def remove_station(station)
		if @route.delete(station) == nil
			"No station"
		end
	end

	def print_route
		puts "#{@route}"
	end

	def get_route
		@route
	end
end