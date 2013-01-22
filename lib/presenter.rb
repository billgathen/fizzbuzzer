require 'json'

class Presenter
  attr_reader :ary
  def initialize ary
    @ary = ary
  end

  def as_text
    ary.join(', ')
  end

  def as_json
    JSON.generate(ary)
  end

  def as_html
    <<EOF
<html>
  <body>
    <ol>
#{ary.map{ |ele| "      <li>#{ele}</li>" }.join("\n")}
    </ol>
  </body>
</html>
EOF
  end
end
