require 'test_helper'

class TestDirectionMove < Minitest::Test
  def setup
    Rover.set_size('5 5')

    @rover = Rover.new('1 2 N')
  end

  def test_should_raise_error_for_move_in_invalid_direction
    assert_raises('No Valid Action') { @rover.move('A') }
  end

  def test_should_return_move_position
    @rover.move('M')
    assert_equal 1, @rover.x1
    assert_equal 3, @rover.y1
    assert_equal 'N', @rover.d
  end

  def test_should_return_left_move_position
    @rover.move('LM')
    assert_equal 0, @rover.x1
    assert_equal 2, @rover.y1
    assert_equal 'W', @rover.d
  end

  def test_should_return_left_move_position
    @rover.move('MR')
    assert_equal 1, @rover.x1
    assert_equal 3, @rover.y1
    assert_equal 'E', @rover.d
  end

  def test_should_return_multi_direction_moves_position
    @rover.move('RMLMLRMM')
    assert_equal 2, @rover.x1
    assert_equal 5, @rover.y1
    assert_equal 'N', @rover.d
  end

  def test_should_raise_error_for_out_of_board_range
    assert_raises('No Valid Action') { @rover.move('RMLMLRMMMM') }
  end
end
