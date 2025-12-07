require 'minitest/autorun'
require_relative './PasswordDial'

describe 'PasswordDial' do
  before do
    @dial = PasswordDial.new
    @test_input = [
      'L68', 'L30', 'R48', 'L5', 'R60', 'L55', 'L1', 'L99', 'R14', 'L82'
    ]
  end

  it 'should calculate the number of times the dial is at 0' do
    @test_input.each { |input|
      @dial.move_dial(input)
      @dial.add_zero_count
    }

    assert_equal 3, @dial.zero_count
  end
end



