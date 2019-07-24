class Coin
end

class CountScore
  count = 0
  def flip(coin)
    random_number = RandomNumber.new
    if random_number.random == 0
      count += 1
      'You flipped a head. The number of heads you have flipped is' + count
    elsif random_number.random == 1
      'You flipped a tails. The number of heads you have flipped is' + count
    end
      count
  end
end

class RandomNumber
  def random
    rand(1)
  end
end
