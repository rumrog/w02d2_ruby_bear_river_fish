class River

    attr_reader :river_name, :fishes

    def initialize(river_name, fishes = [])
        @river_name = river_name
        @fishes = fishes
    end

    def fishes_count()
        return @fishes.length()
    end

    def add_fish(new_fish)
        @fishes.push(new_fish)
    end

    def empty_river()
       @fishes.clear()
    end

end