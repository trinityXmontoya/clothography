require 'spec_helper'

describe "listings/index" do
  before(:each) do
    assign(:listings, [
      stub_model(Listing,
        :user => nil,
        :brand => nil,
        :category => nil,
        :size => nil,
        :gender => nil,
        :title => "Title",
        :description => "Description",
        :sale_price => 1,
        :original_price => 2,
        :price => 3,
        :status => "Status",
        :condition => "Condition"
      ),
      stub_model(Listing,
        :user => nil,
        :brand => nil,
        :category => nil,
        :size => nil,
        :gender => nil,
        :title => "Title",
        :description => "Description",
        :sale_price => 1,
        :original_price => 2,
        :price => 3,
        :status => "Status",
        :condition => "Condition"
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Condition".to_s, :count => 2
  end
end
