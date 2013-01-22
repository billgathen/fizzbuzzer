require_relative '../../lib/fizzbuzzer'

describe Fizzbuzzer do
  context "fizzbuzzes" do
    it "representative values" do
      subject.fizzbuzz(9).should eq("Fizz")
      subject.fizzbuzz(10).should eq("Buzz")
      subject.fizzbuzz(11).should eq("11")
      subject.fizzbuzz(30).should eq("FizzBuzz")
    end
  end

  context "loads" do
    it "basic validation set" do
      [ 15, "15" ].each do |last_num|
        Fizzbuzzer.new(last_num).should ==
          %w{1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz}
      end
    end

    it "invalid sets" do
      [0, -1, nil, "fifteen"].each do |n|
        Fizzbuzzer.new(n).should == []
      end
    end
  end
end
