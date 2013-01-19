require 'json'

class Fizzbuzzer
  attr_reader :up_to
  def initialize up_to
    @up_to = up_to
  end

  def generate
    if valid_value
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
    else
      []
    end
  end

  def valid_value
    (! up_to.nil?) && is_numeric && up_to >= 1
  end

  # http://mentalized.net/journal/2011/04/14/ruby_how_to_check_if_a_string_is_numeric/
  def is_numeric
    Float(up_to) != nil rescue false
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
