require 'json'

class Fixnum
  def multiple_of divisor
    self % divisor == 0
  end
end

class Fizzbuzzer
  attr_reader :up_to
  def initialize up_to = 0
    @up_to = up_to.to_i
  end

  def map n
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

  def generate
    (1..up_to).map { |n| map(n) }
  end

  def as_text
    generate.join(', ')
  end

  def as_json
    JSON.generate(generate)
  end

  def as_html
    <<EOF
<html>
  <body>
    <ol>
#{generate.map{ |ele| "      <li>#{ele}</li>" }.join("\n")}
    </ol>
  </body>
</html>
EOF
  end
end
