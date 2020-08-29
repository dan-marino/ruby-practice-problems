# Refactor these classes so they all use a common superclass, and inherit behavior as needed.

class Vehicles
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicles
  WHEELS = 4
end

class Motorcycle < Vehicles
  WHEELS = 2
end

class Truck < Vehicles
  attr_reader :payload

  WHEELS = 6

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end
end

truck = Truck.new('ford', 'f150', '5 tons')
puts Truck::WHEELS