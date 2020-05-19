class Bear

    attr_reader :bear_name

    def initialize(bear_name)
        @bear_name = bear_name
        @bear_stomach = []
    end

    def bear_stomach()
        return @bear_stomach.length()
    end


end