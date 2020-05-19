require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class RiverTest < MiniTest::Test

    def setup()
        @river = River.new("Tay")
    end

    def test_river_name()
        assert_equal("Tay", @river.river_name())
    end

    def test_count_of_bank_of_fish()
        assert_equal(0, @river.bank_of_fish())
    end

end