require 'spec_helper'

describe "purchases/edit" do
  before(:each) do
    @purchase = assign(:purchase, stub_model(Purchase,
      :seller_id => 1,
      :buyer_id => 1,
      :listings => "MyString"
    ))
  end

  it "renders the edit purchase form" do
    render

    assert_select "form[action=?][method=?]", purchase_path(@purchase), "post" do
      assert_select "input#purchase_seller_id[name=?]", "purchase[seller_id]"
      assert_select "input#purchase_buyer_id[name=?]", "purchase[buyer_id]"
      assert_select "input#purchase_listings[name=?]", "purchase[listings]"
    end
  end
end
