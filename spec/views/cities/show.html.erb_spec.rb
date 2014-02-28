require 'spec_helper'

describe "cities/show" do
  before(:each) do
    @city = assign(:city, stub_model(City,
      :name => "Name",
      :population => "Population",
      :elevation => "Elevation",
      :state => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Population/)
    rendered.should match(/Elevation/)
    rendered.should match(//)
  end
end
