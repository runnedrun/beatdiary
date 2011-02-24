require 'spec_helper'

describe "beats/index.html.erb" do
  before(:each) do
    assign(:beats, [
      stub_model(Beat,
        :name => "Name",
        :length => "Length"
      ),
      stub_model(Beat,
        :name => "Name",
        :length => "Length"
      )
    ])
  end

  it "renders a list of beats" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Length".to_s, :count => 2
  end
end
