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


  def self.say(number, informal: true)
    case
    when number < 20
      result = @@small_numbers[number - 1]
    when 20 <= number && number < 100
      result = @@tens[(number / 10) - 1]
      remainder = number.modulo(10)
      unless remainder.zero?
        result += '-' + say(remainder)
      end
    when 100 <= number && number < 2000
      result = say(number / 100) + ' hundred'
      result = 'one thousand' if (number / 100 == 10)
      remainder = number.modulo(100)
      unless remainder.zero?
        result += ' and' if informal
        result += ' ' + say(remainder)
      end
    when 2000 <= number && number < 1_000_000
      result = say(number / 1000, informal: false) + ' thousand'
      remainder = number.modulo(1000)
      unless remainder.zero?
        result += ' and' if remainder < 100
        result += ' ' + say(remainder)
      end
    when 1_000_000 <= number && number < 1_000_000_000
      result = say(number / 1_000_000, informal: false) + ' million'
      remainder = number.modulo(1_000_000)
      unless remainder.zero?
        result += ' and' if remainder < 100
        result += ' ' + say(remainder)
      end
    end
    result
  end
end
