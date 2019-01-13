class Numerals

  @@small_numbers = %w{
    one two three four five
    six seven eight nine ten 
    eleven twelve thirteen fourteen fifteen 
    sixteen seventeen eightteen nineteen twenty
  }

  @@tens = %w{
    ten twenty thirty fourty fifty sixty seventy eighty ninety
  }


  def self.say(number)
    case
    when (1..20).include?(number)
      @@small_numbers[number - 1]
    when (20..90).include?(number)
      @@tens[number / 10 - 1]
    end  
  end
end
