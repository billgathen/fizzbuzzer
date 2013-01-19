def fizzbuzz up_to
  (1..up_to).map do |n|
    if (n % 15) == 0
      "FizzBuzz"
    elsif (n % 5) == 0
      "Buzz"
    elsif (n % 3) == 0
      "Fizz"
    else
      n
    end
  end
end

puts fizzbuzz(15).join("\n")
