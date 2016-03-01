require 'test_helper'

class TestReverseCircularFacing < Minitest::Test
  def setup
    Rover.set_size('5 5')
  end

  def test_should_return_east_direction
    rover = Rover.new('1 2 N')
    rover.move('R')
    assert_equal 'E', rover.d
  end

  def test_should_return_south_direction
    rover = Rover.new('1 2 W')
    rover.move('R')
    assert_equal 'N', rover.d
  end

  def test_should_return_east_direction
    rover = Rover.new('1 2 S')
    rover.move('R')
    assert_equal 'W', rover.d
  end

  def test_should_return_left_direction
    @rover = Rover.new('1 2 E')
    @rover.move('R')
    assert_equal 'S', @rover.d
  end
end
