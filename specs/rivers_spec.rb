require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../river')
require_relative ('../fish')

class TestRiver < MiniTest::Test
  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Jaws")

    @fishes1 = [@fish1]

    @river = River.new("Aire", @fishes1)
  end

  def test_river_has_name
    assert_equal("Aire", @river.name)
  end

  def test_has_fish
    assert_equal(1, @river.number_of_fish())
  end

  def test_add_fish
    @river.add_fish_to_river(@fish2)
    assert_equal(2, @river.number_of_fish())
  end

  def test_add_multiple_fish
    @river.add_multiple_fish([@fish2, @fish3])
    assert_equal(3, @river.number_of_fish)
  end

  def test_remove_fish
    @river.remove_fish(@fish1)
    assert_equal(0, @river.number_of_fish)
  end

  # def test_remove_multiple_fish
  #   @river.add_multiple_fish([@fish2, @fish3])
  #   @river.remove_fish([@fish1, @fish2, @fish3])
  #   assert_equal(0, @river.number_of_fish)
  # end
end