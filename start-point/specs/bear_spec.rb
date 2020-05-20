require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

class BearTest < MiniTest::Test

    def setup
        @bear = Bear.new("Bob", :grey)
        @fish1 = Fish.new("Salmon")
        @fish2 = Fish.new("Carp")
    end

    def test_bear_name()
        assert_equal("Bob", @bear.bear_name())
    end

    def test_bear_type()
        assert_equal(:grey, @bear.bear_type())
    end

    def test_bear_stomach_starts_empty()
        assert_equal(0, @bear.bear_stomach())
    end

    def test_bear_eats()
        @bear.bear_eats(@fish1)
        @bear.bear_eats(@fish2)
        assert_equal(2, @bear.bear_stomach())
    end

    # --- EXTENSION ---
    # A bear should not add a fish to its stomach 
    # if the river has run out of fish

    def test_bear_eats_from_river__full()
        river1 = River.new("Tweed", [@fish1, @fish2])
        @bear.bear_eats_from_river(river1)
        assert_equal(2, @bear.bear_stomach())
        assert_equal(0, river1.fishes_count())
    end

    def test_bear_eats_from_river__empty()
        river1 = River.new("Tweed", [])
        @bear.bear_eats_from_river(river1)
        assert_equal(0, @bear.bear_stomach())
        assert_equal(0, river1.fishes_count())
    end
    
end