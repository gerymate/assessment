require 'minitest/autorun'
require_relative 'numerals'

class NumeralsTest < Minitest::Test
  def test_1_to_19
    numbers_said = %w{
      one two three four five
      six seven eight nine ten 
      eleven twelve thirteen fourteen fifteen 
      sixteen seventeen eighteen nineteen
    }

    1.upto(19) do |i|
      assert_equal numbers_said[i - 1], Numerals.say(i)      
    end    
  end

  def test_10_to_90_by_10
    numbers_said = {
      10 => 'ten', 20 => 'twenty', 30 => 'thirty', 40 => 'forty', 50 => 'fifty',
      60 => 'sixty', 70 => 'seventy', 80 => 'eighty', 90 => 'ninety'
    }

    test_all_in_hash(numbers_said)
  end

  def test_between_21_and_99
    numbers_said = {
      21 => 'twenty-one', 29 => 'twenty-nine', 42 => 'forty-two',
      55 => 'fifty-five', 91 => 'ninety-one', 99 => 'ninety-nine'
    }

    test_all_in_hash(numbers_said)
  end

  def test_100_to_1900
    numbers_said = {
      100 => 'one hundred', 200 => 'two hundred', 300 => 'three hundred',
      900 => 'nine hundred', 1000 => 'one thousand', 1100 => 'eleven hundred',
      1200 => 'twelve hundred', 1300 => 'thirteen hundred',
      1400 => 'fourteen hundred', 1500 => 'fifteen hundred',
      1600 => 'sixteen hundred', 1700 => 'seventeen hundred',
      1800 => 'eighteen hundred', 1900 => 'nineteen hundred'
    }

    test_all_in_hash(numbers_said)
  end

  def test_between_100_to_1999
    numbers_said = {
      101 => 'one hundred and one', 110 => 'one hundred and ten',
      112 => 'one hundred and twelve', 113 => 'one hundred and thirteen',
      121 => 'one hundred and twenty-one', 299 => 'two hundred and ninety-nine',
      1001 => 'one thousand and one', 1011 => 'one thousand and eleven',
      1080 => 'one thousand and eighty',
      1077 => 'one thousand and seventy-seven',
      1105 => 'eleven hundred and five', 1119 => 'eleven hundred and nineteen',
      1160 => 'eleven hundred and sixty', 1202 => 'twelve hundred and two',
      1313 => 'thirteen hundred and thirteen', 
      1331 => 'thirteen hundred and thirty-one',
      1888 => 'eighteen hundred and eighty-eight', 
      1999 => 'nineteen hundred and ninety-nine'
    }

    test_all_in_hash(numbers_said)
  end

  private def test_all_in_hash(the_hash)
    the_hash.each do |value, said|    
      assert_equal said, Numerals.say(value)      
    end    
  end
end
