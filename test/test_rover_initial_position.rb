require 'test_helper'

class TestRoverInitialPosition < Minitest::Test
  def setup
    Rover.set_size('5 5')
  end

  def test_should_set_rover_position
    @rover = Rover.new('0 0 n')
    assert_equal 0, @rover.x1
    assert_equal 0, @rover.y1
    assert_equal 'N', @rover.d
  end

  def test_should_raise_error_for_out_of_board_range
    assert_raises('Out of Board range') { Rover.new('0 6 E') }
  end

  def test_should_raise_error_for_out_of_board_range1
    assert_raises('Out of Board range') { Rover.new('-1 3 W') }
  end

  def test_should_raise_error_for_out_of_board_range2
    assert_raises('Out of Board range') { Rover.new('-1 -2 W') }
  end

  def test_should_raise_error_for_out_of_board_range3
    assert_raises('Out of Board range') { Rover.new('7 12 W') }
  end

  def test_should_raise_error_for_out_of_board_range3
    assert_raises("Invalid Input length, eg input format is: '1 2 N'") { Rover.new('12 W') }
  end
end
