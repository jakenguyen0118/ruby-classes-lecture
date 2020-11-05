class House 
    def initialize(address, owner, rooms)
        # CREATE AN INSTANCE VARIABLE
        @address = address
        @owner = owner
        @num_of_rooms = rooms
    end

    def set_num_of_rooms(num)
        @num_of_rooms = num
    end

    def get_num_of_rooms
        @num_of_rooms
    end

    def set_owner(owner)
        @owner = owner
    end 
    def get_owner
        @owner
    end
    # SETTER METHOD
    def set_address(address)
       @address = address
    end 
    # GETTER METHOD
    def get_address
        @address
    end
    def open_door
       p 'open door'
    end 
    def close_door
        p 'close door'
    end
end

my_house = House.new('111, New York, NY', 'joe', 3)

p my_house.get_address
p my_house.get_num_of_rooms
p my_house.get_owner