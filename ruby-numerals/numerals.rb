class Numerals

  @@small_numbers = %w{
    zero one two three four five
    six seven eight nine ten 
    eleven twelve thirteen fourteen fifteen 
    sixteen seventeen eighteen nineteen
  }

  @@tens = %w{
    ten twenty thirty forty fifty sixty seventy eighty ninety
  }

  @@magnitudes = {
    [1_000, 1_000_000] => 'thousand',
    [1_000_000, 1_000_000_000] => 'million',
    # we are using the American system for now, 
    # but choosing between this and the British system would be a nice option
    [1_000_000_000, 1_000_000_000_000] => 'billion',
    [1_000_000_000_000, 1_000_000_000_000_000] => 'trillion',
    [1_000_000_000_000_000, 1_000_000_000_000_000_000] => 'quadrillion'
    # to be continued...
  }

  def self.say_large(number)
    magnitude = @@magnitudes.keys.find do |lower, upper| 
      lower <= number && number < upper
    end
    return 'around the number of grains of sand in the Sahara' if magnitude.nil?
    divisor = magnitude.first
    magnitude_name = @@magnitudes[magnitude] 
    result = say(number / divisor, informal: false) + ' ' + magnitude_name
    remainder = number.modulo(divisor)
    unless remainder.zero?
      result += ' and' if remainder < 100
      result += ' ' + say(remainder)
    end
    result
  end

  def self.say(number, informal: true)
    return unless number.is_a?(Numeric)
    case
    when number < 0
      result = 'negative ' + say(-number)
    when number < 20
      result = @@small_numbers[number]
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
    else
      result = say_large(number)
    end
    result
  end
end
