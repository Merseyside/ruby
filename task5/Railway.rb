class Railway
	 
	 @@all_stations = Array.new
	def initialize(name)
		@name = name
		@trains = []
		@@all_stations.push(name)
	end

	def self.all
		puts "#{@@all_stations}"
	end

	def add_train(train_object)
		@trains.push(train_object)
	end

	def get_trains
		for train in @trains
			puts "Номер поезда = #{train.number}"
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
		puts "Пассажирских #{p1} Грузовых #{w}"
	end

	def send_train(object_train)
		trains.delete(object_train)
		puts "Поезд отправлен"
	end

private
attr_reader :trains
	
end