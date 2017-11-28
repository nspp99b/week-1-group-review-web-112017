# Finish the implementation of the Car class so it has the functionality described below
require 'pry'
class Car

  @@all = []

  def self.all
    @@all
  end

  attr_reader :make, :model

  def initialize(make:, model:)
    @make = make
    @model = model
    @@all << self
  end

  def drive
    "VROOOOOOOOOOOOM!"
  end

end

binding.pry
#
# car = Car.new("volvo", "lightening")
# car.make
# #=> "volvo"
# car.modelcar
# #=> "ligthening"
#
# car.drive
# # => "VROOOOOOOOOOOOM!"
#
# Car.all
# #=> [car1, car2, car3]
#
# BONUS:
#
# Car.new(make: "volvo", model: "lightening")
#
# car.make
# #=> "volvo"
# car.model
# #=> "ligthening"
