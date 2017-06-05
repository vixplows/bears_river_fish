require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../bears')

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Baloo")
  end

end