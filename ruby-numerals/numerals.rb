class Numerals

  @@small_numbers = %w{
    one two three four five
    six seven eight nine ten 
    eleven twelve thirteen fourteen fifteen 
    sixteen seventeen eightteen nineteen twenty
  }


  def self.say(number)
    @@small_numbers[number - 1]
  end
end
