def fizzbuzz up_to
  (1..up_to).each do |n|
    if (n % 15) == 0
      puts "FizzBuzz"
    elsif (n % 5) == 0
      puts "Buzz"
    elsif (n % 3) == 0
      puts "Fizz"
    else
      puts n
    end
  end
end

fizzbuzz(15)
