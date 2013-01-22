class Fixnum
  def multiple_of divisor
    self % divisor == 0
  end
end

class Fizzbuzzer < Array
  def initialize last_num = 0
    load(last_num.to_i) unless invalid(last_num)
  end

  def invalid last_num
    last_num.to_i <= 0
  end

  def load last_num
    (1..last_num).each { |n| self << fizzbuzz(n) }
  end

  def fizzbuzz n
    if n.multiple_of(15)
      "FizzBuzz"
    elsif n.multiple_of(5)
      "Buzz"
    elsif n.multiple_of(3)
      "Fizz"
    else
      n.to_s
    end
  end
end
