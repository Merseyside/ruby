class Train

	attr_reader :number
	attr_reader :type
	attr_reader :count
	

	@PUBLIC = 1
	@WEIGHT = 2
	@carriage = 0
	@type = 0
	@number = ""
	@route
	@route_mas
	@current_station

	def initialize(number, type, count)
		@number = number
		@type = type
		@carriage = count
		@current_station = 0
	end

	def self.PUBLIC
		@PUBLIC
	end

	def self.WEIGHT
		@WEIGHT
	end

	def get_type
		@type
	end

	def increase_speed(speed)
		@speed = speed
	end

	def stop
		@speed = 0
	end

	def carriages_count
		puts "#{@carriage} вагонов"
	end

	def add_carriage
		if stop?
			@carriage += 1
			puts "Вагон добавлен"
		else 
			puts "Поезд в движении"
		end
	end

	def remove_carriage
		if stop?
			@carriage -= 1
			puts "Вагон отцеплен"
		else 
			puts "Поезд в движении"
		end
	end

	def set_route(route)
		@route = route
	end

	def move_to_next_station
		@route_mas = @route.get_route
		if @current_station != @route_mas.size
			@current_station += 1
		else
			puts "Поезд на конечной станции"
		end
	end

	def move_to_prev_station
		@route_mas = route.get_route
		if @current_station != 0
			@current_station -= 1
		else
			puts "Поезд на начальной станции"
		end
	end

	def print
		@route_mas = route.get_route
		puts "Текущая станция #{@route_mas[@current_station]}"
		puts "Предыдущая #{@route_mas[@current_station-1]}" if @current_station!=0
		puts "Следующая #{@route_mas[@current_station+1]}" if @current_station<@route_mas.size
	end

private
	def stop?
		@speed == 0
	end

end
