require 'test_helper'

class TestDirection < Minitest::Test
  def setup
    Rover.set_size('5 5')
    @rover = Rover.new('1 2 N')
  end

  def test_should_return_left_direction
    @rover.move('L')
    assert_equal 'W', @rover.d
  end

  def test_should_return_lowercase_left_direction
    @rover.move('l')
    assert_equal 'W', @rover.d
  end

  def test_should_return_error_for_move_in_invalid_direction
    assert_raises('No Valid Action') { @rover.move('B') }
  end

  def test_should_return_right_direction
    @rover.move('R')
    assert_equal 'E', @rover.d
  end
end
