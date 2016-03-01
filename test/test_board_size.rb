require 'test_helper'

class TestBoardSize < Minitest::Test
  def setup
    @board_size = Rover.set_size('5 5')
  end

  def test_should_return_board_coordinates
    assert_equal [5, 5], @board_size
  end
end
