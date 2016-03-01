class Rover

  DIRECTION = ['N', 'W', 'S', 'E']
  MOVE_STRATEGY = { 'N' => ['@x1', '@y1+1'],
                    'W' => ['@x1-1', '@y1'],
                    'S' => ['@x1', '@y1-1'],
                    'E' => ['@x1+1', '@y1']
                  }

  attr_accessor :x1, :y1, :d

  class << self
    attr_accessor :x, :y
  end

  def initialize(current_position)
    # check if inputs in is format "x1 y1 d"
    # check if position is within board
    # All valid?`
    validate_and_set_inputs(current_position)
  end

  def move(input)
    input.split("").each do |action|
      case action.upcase
      when "L"
        face_left
      when "R"
        face_right
      when "M"
        move_ahead
      else
        raise "No Valid Action"
      end
    end
  end

  def final_position
    [@x1, @y1, @d].join(" ")
  end

  def self.set_size(size)
    @@x, @@y = size.split(" ")
    @@x = @@x.to_i
    @@y = @@y.to_i
    [@@x, @@y]
  end

  private
  def validate_and_set_inputs(input)
    begin
      if input.split(' ').length.eql?(3)
        @x1, @y1, @d = input.split(' ')
        @x1 = @x1.to_i
        @y1 = @y1.to_i
        unless (0..@@x).to_a.include?(@x1) && (0..@@y).to_a.include?(@y1)
          raise 'Out of Board range'
        end

        @d  = @d.to_s.upcase
        return true
      else
        raise "Invalid Input length, eg input format is: '1 2 N'"
      end
    rescue
      raise "Invalid Input, eg input format is: '1 2 N'"
    end
  end

  def face_left
    direction = DIRECTION[DIRECTION.index(@d) + 1]
    if direction.nil?
      @d = DIRECTION.first
    else
      @d = DIRECTION[DIRECTION.index(@d) + 1]
    end
  end

  def face_right
    @d = DIRECTION[DIRECTION.index(@d) - 1]
  end

  def move_ahead
    # check if rover is out of board range and move ahead?
    @x1 = eval(MOVE_STRATEGY[@d].first)
    @y1 = eval(MOVE_STRATEGY[@d].last)
    unless (0..@@x).include?(@x1) && (0..@@y).include?(@y1)
      raise 'Out of Board range'
    end
  end
end
