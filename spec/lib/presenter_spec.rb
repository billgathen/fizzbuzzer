require_relative '../../lib/presenter'

describe Presenter do
  let(:present) { Presenter.new(%w{ 1 Be bop alulah }) }

  context "outputs" do
    it "text" do
      present.as_text.should == "1, Be, bop, alulah"
    end

    it "json" do
      present.as_json.should == "[\"1\",\"Be\",\"bop\",\"alulah\"]"
    end

    it "html" do
      present.as_html.should ==
        <<EOF
<html>
  <body>
    <ol>
      <li>1</li>
      <li>Be</li>
      <li>bop</li>
      <li>alulah</li>
    </ol>
  </body>
</html>
EOF
    end
  end
end
