module Transportation
  class Vehicle
    attr_reader :year

    def initialize(year)
      @year = year
    end
  end

  module Towable
    def tow
      puts "I can tow a trailer!"
    end
  end

  class Truck < Vehicle
    attr_accessor :bed_type

    include Towable

    def initialize(year, bed_type)
      super(year)
      @bed_type = bed_type
      start_engine
    end

    def start_engine(speed = 'fast')
      puts "Ready to go! Drive #{speed} please!"
    end
  end

  class Car < Vehicle
  end
end

truck1 = Transportation::Truck.new(1994, 'short')
puts truck1.year
puts truck1.bed_type
truck1.tow

car1 = Transportation::Car.new(2006)
puts car1.year