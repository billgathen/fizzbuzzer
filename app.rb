require 'sinatra'
require_relative 'lib/presenter'
require_relative 'lib/fizzbuzzer'

get '/' do
  <<EOF
<html>
  <body>
    <h3>Enter a number to FizzBuzz up to:</h3>
    <form method="post">
      <input type="text" name="last_num" value="15">
      <select name="format">
        <option>text</option>
        <option>json</option>
        <option>html</option>
      </select>
      <input type="submit" value="FizzBuzz!">
    </form>
  </body>
</html>
EOF
end

post '/' do
  fb = Presenter.new(Fizzbuzzer.new(params[:last_num]))
  puts "FORMAT: " + params[:format]
  if params[:format] == "text"
    fb.as_text
  elsif params[:format] == "json"
    fb.as_json
  elsif params[:format] == "html"
    fb.as_html
  end
end
