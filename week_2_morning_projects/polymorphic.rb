class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def to(method)
    method.scramble(@contents)
  end
end

class ScrambleByReversing
  def initialize(contents)
    @contents = contents
  end
  def scramble
    @contents = @contents.reverse
  end
end

class ScramblebyAdvancingChars
  def initialize(contents)
    @contents = contents
  end
  def scramble(steps)
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + steps).chr
    end
    @contents = scrambled_chars.join
  end
end

class UnscrambleByReversing
  def initialize(contents)
    @contents = contents
  end

  def scramble
    @contents = @contents.reverse
  end
end

class UnscramblebyAdvancingChars

  def initialize(contents)
    @contents = contents
  end

    def scramble(steps)
      scrambled_chars = @contents.chars
      plain_chars = scrambled_chars.map do |char|
        (char.ord - steps).chr
      end
      @contents = plain_chars.join
    end

end
