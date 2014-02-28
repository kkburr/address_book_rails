require 'spec_helper'

describe "people/new" do
  before(:each) do
    assign(:person, stub_model(Person,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :address_line_one => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip_code => "MyString"
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", people_path, "post" do
      assert_select "input#person_first_name[name=?]", "person[first_name]"
      assert_select "input#person_last_name[name=?]", "person[last_name]"
      assert_select "input#person_email[name=?]", "person[email]"
      assert_select "input#person_address_line_one[name=?]", "person[address_line_one]"
      assert_select "input#person_city[name=?]", "person[city]"
      assert_select "input#person_state[name=?]", "person[state]"
      assert_select "input#person_zip_code[name=?]", "person[zip_code]"
    end
  end
end
