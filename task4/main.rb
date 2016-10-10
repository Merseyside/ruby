require_relative "Railway.rb"
require_relative "Route.rb"
require_relative "Train.rb"
require_relative "PassangerTrain.rb"
require_relative "PassangerCarriage.rb"

station = Railway.new("123")
train = PassangerTrain.new(1)
train2 = PassangerTrain.new(2)
train3 = PassangerTrain.new(3)
train3.increase_speed(100)
train.add_carriage(PassangerCarriage.new)
=begin
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
=end