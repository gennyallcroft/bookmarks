class RomanNumeral
  def convert(number)
    case number
    when 1
      return "I"
    when 2
      return "II"
    when 3
      return "III"
    when 4
      return "IV"
    when 5
      return "V"
    when 6
      return "VI"
    when 7
      return "VII"
    when 8
      return "VIII"
    when 9
      return "IX"
    when 10
      return "X"
    end
  end
  def get_user_input
    number = gets.chomp
  end
end
