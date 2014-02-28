require 'spec_helper'

describe "people/index" do
  before(:each) do
    assign(:people, [
      stub_model(Person,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :address_line_one => "Address Line One",
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code"
      ),
      stub_model(Person,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :address_line_one => "Address Line One",
        :city => "City",
        :state => "State",
        :zip_code => "Zip Code"
      )
    ])
  end

  it "renders a list of people" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Address Line One".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
  end
end
