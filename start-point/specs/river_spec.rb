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
    
end