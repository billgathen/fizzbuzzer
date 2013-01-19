require_relative 'fizzbuzzer'

fb = Fizzbuzzer.new(15)

puts fb.as_text
puts fb.as_json
puts fb.as_html
puts fb.generate.join("\n")

