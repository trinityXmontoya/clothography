require 'spec_helper'

describe "purchases/index" do
  before(:each) do
    assign(:purchases, [
      stub_model(Purchase,
        :seller_id => 1,
        :buyer_id => 2,
        :listings => "Listings"
      ),
      stub_model(Purchase,
        :seller_id => 1,
        :buyer_id => 2,
        :listings => "Listings"
      )
    ])
  end

  it "renders a list of purchases" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Listings".to_s, :count => 2
  end
end
