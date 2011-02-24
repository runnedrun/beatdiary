require 'spec_helper'

describe "beats/show.html.erb" do
  before(:each) do
    @beat = assign(:beat, stub_model(Beat,
      :name => "Name",
      :length => "Length"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Length/)
  end
end
