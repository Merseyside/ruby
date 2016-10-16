require_relative "Railway.rb"
require_relative "Route.rb"
require_relative "Train.rb"
require_relative "PassangerTrain.rb"
require_relative "PassangerCarriage.rb"
require_relative "CargoTrain.rb"
require_relative "CargoCarriage.rb"

station = Railway.new("123")
station1 = Railway.new("arg")
train = PassangerTrain.new(1)
train2 = PassangerTrain.new(2)
train3 = PassangerTrain.new(3)
train3.increase_speed(100)
train.add_carriage(PassangerCarriage.new)
cargo_train = CargoTrain.new(4);
cargo_train.company = "HP"
puts "#{cargo_train.company}"
Railway.all
train1_1 = Train.find(2)
