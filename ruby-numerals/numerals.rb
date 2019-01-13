class Numerals

  @@small_numbers = %w{
    one two three four five
    six seven eight nine ten 
    eleven twelve thirteen fourteen fifteen 
    sixteen seventeen eighteen nineteen
  }

  @@tens = %w{
    ten twenty thirty forty fifty sixty seventy eighty ninety
  }


  def self.say(number)
    result = ''
    case
    when (1..19).include?(number)
      result = @@small_numbers[number - 1]
    when (20..99).include?(number)
      result = @@tens[(number / 10) - 1]
      remainder = number.modulo(10)
      unless remainder.zero?
        result += '-' + say(remainder)
      end
    when number >= 100 && number < 2000
      result = say(number / 100) + ' hundred'
      result = 'one thousand' if (number / 100 == 10)
      remainder = number.modulo(100)
      unless remainder.zero?
        result += ' and ' + say(remainder)
      end
    end
    result
  end
end
