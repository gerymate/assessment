require 'minitest/autorun'
require_relative 'numerals'

class NumeralsTest < Minitest::Test
  def test_1
    assert_equal 'one', Numerals.say(1)
  end
end
