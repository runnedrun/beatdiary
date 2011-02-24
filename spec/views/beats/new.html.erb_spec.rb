require 'spec_helper'

describe "beats/new.html.erb" do
  before(:each) do
    assign(:beat, stub_model(Beat,
      :name => "MyString",
      :length => "MyString"
    ).as_new_record)
  end

  it "renders new beat form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => beats_path, :method => "post" do
      assert_select "input#beat_name", :name => "beat[name]"
      assert_select "input#beat_length", :name => "beat[length]"
    end
  end
end
