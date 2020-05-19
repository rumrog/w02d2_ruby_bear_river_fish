class River

    attr_reader :river_name

    def initialize(river_name)
        @river_name = river_name
        @bank_of_fish = []
    end

    def bank_of_fish()
        return @bank_of_fish.length()
    end

    def add_fish(new_fish)
        @bank_of_fish.push(new_fish)
    end

end