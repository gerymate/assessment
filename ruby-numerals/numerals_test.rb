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

  def test_1000_to_990000_by_1000
    numbers_said = {
      1000 => 'one thousand', 2000 => 'two thousand', 10000 => 'ten thousand',
      11000 => 'eleven thousand', 12000 => 'twelve thousand', 
      13000 => 'thirteen thousand', 100000 => 'one hundred thousand',
      112000 => 'one hundred twelve thousand',
      119000 => 'one hundred nineteen thousand',
      200000 => 'two hundred thousand',
      210000 => 'two hundred ten thousand',
      990000 => 'nine hundred ninety thousand',
      999000 => 'nine hundred ninety-nine thousand'
    }
    test_all_in_hash(numbers_said)
  end

  def test_between_2000_and_999999
    numbers_said = {
      2001 => 'two thousand and one', 2010 => 'two thousand and ten',
      2099 => 'two thousand and ninety-nine',
      2100 => 'two thousand one hundred', 
      2101 => 'two thousand one hundred and one',
      2999 => 'two thousand nine hundred and ninety-nine',
      3007 => 'three thousand and seven',
      17999 => 'seventeen thousand nine hundred and ninety-nine',
      190011 => 'one hundred ninety thousand and eleven',
      201304 => 'two hundred one thousand three hundred and four',
      990100 => 'nine hundred ninety thousand one hundred',
      999999 => 'nine hundred ninety-nine thousand nine hundred and ninety-nine'
    }
    test_all_in_hash(numbers_said)
  end


  private def test_all_in_hash(the_hash)
    the_hash.each do |value, said|    
      assert_equal said, Numerals.say(value)      
    end    
  end
end
