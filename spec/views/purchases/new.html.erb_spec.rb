require 'spec_helper'

describe "purchases/new" do
  before(:each) do
    assign(:purchase, stub_model(Purchase,
      :amount => "9.99",
      :tracking_id => 1
    ).as_new_record)
  end

  it "renders new purchase form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", purchases_path, "post" do
      assert_select "input#purchase_amount[name=?]", "purchase[amount]"
      assert_select "input#purchase_tracking_id[name=?]", "purchase[tracking_id]"
    end
  end
end
