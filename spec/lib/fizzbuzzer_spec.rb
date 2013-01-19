require_relative '../../lib/fizzbuzzer'

describe Fizzbuzzer do
  context "generates" do
    it "basic validation set" do
      Fizzbuzzer.new(15).generate.should ==
        [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz"]
    end

    it "invalid sets" do
      Fizzbuzzer.new(0).generate.should == []
      Fizzbuzzer.new(nil).generate.should == []
      Fizzbuzzer.new("fifteen").generate.should == []
    end
  end

  context "outputs" do
    it "text" do
      Fizzbuzzer.new(15).as_text.should ==
        "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"
    end

    it "json" do
      Fizzbuzzer.new(15).as_json.should ==
        "[1,2,\"Fizz\",4,\"Buzz\",\"Fizz\",7,8,\"Fizz\",\"Buzz\",11,\"Fizz\",13,14,\"FizzBuzz\"]"
    end

    it "html" do
      Fizzbuzzer.new(15).as_html.should ==
        <<EOF
<ul>
	<li>1</li>
	<li>2</li>
	<li>Fizz</li>
	<li>4</li>
	<li>Buzz</li>
	<li>Fizz</li>
	<li>7</li>
	<li>8</li>
	<li>Fizz</li>
	<li>Buzz</li>
	<li>11</li>
	<li>Fizz</li>
	<li>13</li>
	<li>14</li>
	<li>FizzBuzz</li>
</ul>
EOF
    end
  end
end
