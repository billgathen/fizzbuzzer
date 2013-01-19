require 'json'

class Fizzbuzzer
  attr_reader :up_to
  def initialize up_to
    @up_to = up_to
  end

  def generate
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

  def as_text
    generate.join(', ')
  end

  def as_json
    JSON.generate(generate)
  end

  def as_html
    "<ul>\n" +
    generate.map{ |ele| "\t<li>#{ele}</li>\n" }.join('') +
    "</ul>\n"
  end
end
