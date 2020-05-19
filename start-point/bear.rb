class Bear

    attr_reader :bear_name

    def initialize(bear_name)
        @bear_name = bear_name
        @bear_stomach = []
    end

    def bear_stomach()
        return @bear_stomach.length()
    end

    def bear_eats(fish_eaten)
        @bear_stomach.push(fish_eaten)
    end

    # def bear_eats_from_river(river)
    #     for fish in river.bank_of_fish()
    #       bear_eats(fish)
    #     end
    #     river.empty_river()
    #   end
end