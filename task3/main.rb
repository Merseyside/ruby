require_relative "Railway.rb"
require_relative "Route.rb"
require_relative "Train.rb"

station = Railway.new("123")
train = Train.new(1, Train.PUBLIC, 5)
train2 = Train.new(2, Train.WEIGHT, 15)
train3 = Train.new(3, Train.PUBLIC, 9)
station.add_train(train)
station.add_train(train2)
station.add_train(train3)
station.get_trains
station.get_trains_by_type
station.send_train(train)
station.get_trains
train.increase_speed(0)
train.add_carriage
route1 = Route.new("abc", "def")
route1.add_station("jkl", 1)
route1.add_station("jkl", 1)
route1.get_route
train.set_route(route1)
train.move_to_next_station
train.print