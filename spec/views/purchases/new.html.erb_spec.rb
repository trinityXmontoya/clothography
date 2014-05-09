require 'spec_helper'

describe "purchases/new" do
  before(:each) do
    assign(:purchase, stub_model(Purchase,
      :seller_id => 1,
      :buyer_id => 1,
      :listings => "MyString"
    ).as_new_record)
  end

  it "renders new purchase form" do
    render

    assert_select "form[action=?][method=?]", purchases_path, "post" do
      assert_select "input#purchase_seller_id[name=?]", "purchase[seller_id]"
      assert_select "input#purchase_buyer_id[name=?]", "purchase[buyer_id]"
      assert_select "input#purchase_listings[name=?]", "purchase[listings]"
    end
  end
end
