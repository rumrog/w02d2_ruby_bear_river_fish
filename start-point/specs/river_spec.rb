require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

    def setup()
        @river = River.new("Tay")
        @fish1 = Fish.new("Salmon")
        @fish2 = Fish.new("Carp")

    end

    def test_river_name()
        assert_equal("Tay", @river.river_name())
    end

    def test_count_of_bank_of_fish()
        assert_equal(0, @river.bank_of_fish())
    end

    def test_add_fish_to_river()
        @river.add_fish(@fish1)
        @river.add_fish(@fish2)
        assert_equal(2, @river.bank_of_fish())
    end

    def test_empty_river()
        @river.add_fish(@fish1)
        @river.add_fish(@fish2)
        @river.empty_river()
        assert_equal(0, @river.bank_of_fish())
    end
    
end