require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class FishTest < MiniTest::Test

    def setup
        @fish1 = Fish.new("Salmon")
    end

    def test_can_create_fish()
        assert_equal(Fish, @fish1.class())
    end
    
    def test_fish_name()
        assert_equal("Salmon", @fish1.fish_name())
    end

end