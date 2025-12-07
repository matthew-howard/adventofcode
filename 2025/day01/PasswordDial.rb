class PasswordDial
  attr_accessor :position
  attr_accessor :zero_count

  def initialize
    @position = 50
    @zero_count = 0
  end

  def add_zero_count
    if @position === 0
      @zero_count += 1
    end
  end

  def move_dial(rotation)
    direction, count = rotation.split(//, 2)
    count = count.to_i

    until count < 100 do
      count -= 100
    end
    
    direction === 'L' ? move_dial_left(count) : move_dial_right(count)
  end

  def move_dial_left(count)
    @position -= count.to_i

    if @position.negative?
      @position += 100
    end
  end

  def move_dial_right(count)
    @position += count.to_i

    if @position >= 100
      @position -= 100
    end
  end
end