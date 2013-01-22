require_relative '../../lib/presenter'

describe Presenter do
  let(:present) { Presenter.new(%w{ 1 Fizz Buzz FizzBuzz }) }

  context "outputs" do
    it "text" do
      present.as_text.should == "1, Fizz, Buzz, FizzBuzz"
    end

    it "json" do
      present.as_json.should == "[\"1\",\"Fizz\",\"Buzz\",\"FizzBuzz\"]"
    end

    it "html" do
      present.as_html.should ==
        <<EOF
<html>
  <body>
    <ol>
      <li>1</li>
      <li>Fizz</li>
      <li>Buzz</li>
      <li>FizzBuzz</li>
    </ol>
  </body>
</html>
EOF
    end
  end
end
