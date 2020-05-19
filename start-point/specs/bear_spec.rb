require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class BearTest < MiniTest::Test

    def setup
        @bear = Bear.new("Bob")
    end

    def test_bear_name()
        assert_equal("Bob", @bear.bear_name())
    end

end