require_relative "Railway.rb"
require_relative "Route.rb"
require_relative "Train.rb"
require_relative "PassangerTrain.rb"
require_relative "PassangerCarriage.rb"
require_relative "CargoTrain.rb"
require_relative "CargoCarriage.rb"

station = Railway.new("123")
station1 = Railway.new("arg")
number = ""
train = PassangerTrain.new(number)
train2 = PassangerTrain.new("123-1")
train4 = PassangerTrain.new("123-13")
train5 = PassangerTrain.new("123-15")
train7 = PassangerTrain.new("123-14")
train8 = PassangerTrain.new("123-15")
train6 = PassangerTrain.new("123-14")
train3 = PassangerTrain.new("123-12")
train3.increase_speed(100)
train.add_carriage(PassangerCarriage.new)
cargo_train = CargoTrain.new("12312");
puts "#{cargo_train.valid?}";
cargo_train.company = "HP"
puts "#{cargo_train.company}"
Railway.all
train1_1 = Train.find(2)
route1 = Route.new(station, station1)
