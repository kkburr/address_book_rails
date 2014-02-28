require 'spec_helper'

describe "cities/index" do
  before(:each) do
    assign(:cities, [
      stub_model(City,
        :name => "Name",
        :population => "Population",
        :elevation => "Elevation",
        :state => ""
      ),
      stub_model(City,
        :name => "Name",
        :population => "Population",
        :elevation => "Elevation",
        :state => ""
      )
    ])
  end

  it "renders a list of cities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Population".to_s, :count => 2
    assert_select "tr>td", :text => "Elevation".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
