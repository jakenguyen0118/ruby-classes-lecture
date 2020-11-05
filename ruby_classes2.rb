# CREATE THE VEHICLE CLASS "SUPERCLASS"
class Vehicle
    attr_accessor :odometer

    @@factory = 'some factory'

    def initialize(odometer, gas_used)
        @odometer = odometer
        @gas_used = gas_used
    end

    def print_factory
        p "the factory is: #{@@factory}"
    end

    def sound_horn
        p 'Beep Beep'
    end

    def accelerate
        p 'Vroom...vroom'
    end

    def check_mileage
        p @odometer / @gas_used
    end
end

# CAR CLASS INHERITS FROM VEHICLE CLASS
class Car < Vehicle
    def accelerate
        super
        p 'This car makes a way cooler sound... grrrrr'
    end

    def sound_horn
        super
        p 'more beep beep'
    end
end

my_car = Car.new(10000, 100)
# my_car.accelerate
# my_car.sound_horn
# my_car.check_mileage
# my_car.print_factory
p my_car.odometer

class Truck < Vehicle
end

your_truck = Truck.new(20000, 200)
# your_truck.accelerate
# your_truck.sound_horn
# your_truck.check_mileage
# your_truck.print_factory