require 'minitest/autorun'
require_relative 'numerals'

class NumeralsTest < Minitest::Test
  def test_1_to_20
    numbers_said = %w{
      one two three four five
      six seven eight nine ten 
      eleven twelve thirteen fourteen fifteen 
      sixteen seventeen eightteen nineteen twenty
    }

    1.upto(20) do |i|
      assert_equal numbers_said[i - 1], Numerals.say(i)      
    end    
  end

end
