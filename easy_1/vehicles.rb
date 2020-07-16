class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  def wheels
    4
  end
end

class Motorcycle < Vehicle
  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end

  def to_s
    super + " with #{payload}."
  end
end

truck = Truck.new('Chevrolet', 'Malibu', 'mulch')
puts truck

car = Car.new('Honda', 'Civic')
puts car

motorcycle = Motorcycle.new('Harley', 'Davidson')
puts motorcycle