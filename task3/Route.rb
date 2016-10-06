class Route
	@route = []
	def initialize(start, end1)
		@route = [start, end1]
	end

	def add_station(station, pos)
		if pos <= @route.size && pos != 0
			@route.insert(pos, station)
			puts "Выполнено!"
		else 
			puts "Неверный ввод"
		end
	end

	def remove_station(station)
		if @route.delete(station) == nil
			"такой станции нет"
		end
	end

	def print_route
		puts "#{@route}"
	end

	def get_route
		@route
	end
end