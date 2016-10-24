class Train

	attr_reader :number
	attr_reader :type
	attr_reader :count
	

	@PUBLIC = 1
	@WEIGHT = 2
	@@all_trains = Array.new
	@valid = false;

	def initialize(number)
		begin
			if number.to_s.empty? or number==nil
				raise ArgumentError.new("You must set a number")
			else 
				unless check_number(number)
					raise ArgumentError.new("Wrong number of train")
				end
			end
			unless origin?(number) 
				raise ArgumentError.new("Train with this number already exists")
			end
		rescue Exception => msg 
			puts "#{msg}. Please input correct information"
			return
		end
		@@all_trains.push(self)
		@number = number.to_s
		@current_station = 0
		@speed = 0
		@carriage = Array.new
		@valid = true;
	end



	def valid?
		@valid
	end 

	def self.find(name)
		for i in 0..@@all_trains.size-1
			obj = @@all_trains[i]
			if obj.number.to_s == name.to_s
				puts "Carriage found"
				return obj
			end
		end
	end

	def increase_speed(speed)
		@speed = speed
	end

	def stop
		@speed = 0
	end

	def carriages_count
		puts "#{@carriage} carriages"
	end

	def add_carriage(carr)
		if stop?
			@carriage.push(carr)
			puts "Carriage added"
		else 
			puts "Train is moving"
		end
	end

	def remove_carriage
		if stop? && @carriage != 0
			@carriage -= 1
			puts "Carriage removed"
		else 
			puts "Train is moving"
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
			puts "Train to the last station"
		end
	end

	def move_to_prev_station
		@route_mas = route.get_route
		if @current_station != 0
			@current_station -= 1
		else
			puts "Train to the first station "
		end
	end

	def print
		@route_mas = route.get_route
		puts "Current station #{@route_mas[@current_station]}"
		puts "Previous #{@route_mas[@current_station-1]}" if @current_station!=0
		puts "Next #{@route_mas[@current_station+1]}" if @current_station<@route_mas.size
	end

protected
	def stop?
		@speed == 0
	end

	def check_number(number)
		reg = /^(\d{3})-?(\d{2})$/;
		flag = false
		if reg.match(number.to_s)
			flag = true
		end
		flag
	end

	def origin?(train_number)
		for train in @@all_trains
			if train.number.to_s == train_number.to_s
				return false
			end
		end
		return true
	end

end