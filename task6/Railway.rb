class Railway
	 
	 @valid = false
	 @@all_stations = Array.new

	def initialize(name)
		begin
			raise ArgumentError.new("You must set a number") if name.to_s.empty? or name==nil;
			rescue Exception => msg
				puts "#{msg}. Please input correct information" 
				return
		end
			@name = name
			@trains = []
			@@all_stations.push(name)
			@valid = true;
	end

	def valid?
		@valid
	end

	def self.all
		puts "#{@@all_stations}"
	end

	def add_train(train_object)
		@trains.push(train_object)
	end

	def get_trains
		for train in @trains
			puts "Train number = #{train.number}"
		end
	end

	def get_trains_by_type
		p1 = 0
		w = 0
		for train in @trains
			if train.get_type == Train.PUBLIC
				p1 +=1
			else
				w +=1
			end
		end
		puts "Passanger #{p1} Cargo #{w}"
	end

	def send_train(object_train)
		trains.delete(object_train)
		puts "The train left"
	end

private
attr_reader :trains
	
end