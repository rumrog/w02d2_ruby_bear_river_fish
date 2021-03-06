class Bear

    attr_reader :bear_name, :bear_type

    def initialize(bear_name, bear_type)
        @bear_name = bear_name
        @bear_type = bear_type
        @bear_stomach = []
    end

    def bear_stomach()
        return @bear_stomach.size()
    end

    def bear_eats(fish_eaten)
        @bear_stomach.push(fish_eaten)
    end

    def bear_eats_from_river(river)
        for fish in river.fishes()
          bear_eats(fish)
        end
        river.empty_river()
    end

end