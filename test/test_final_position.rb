require 'test_helper'

class TestFinalPosition < Minitest::Test
  def setup
    Rover.set_size('5 5')
  end

  def test_should_return_final_position_for_rover1
    @rover = Rover.new('1 2 N')
    @rover.move('LMLMLMLMM')
    assert_equal '1 3 N', @rover.final_position
  end

  def test_should_return_final_position_for_rover1
    @rover = Rover.new('3 3 E')
    @rover.move('MMRMMRMRRM')
    assert_equal '5 1 E', @rover.final_position
  end
end
