require 'spec_helper'

describe "listings/edit" do
  before(:each) do
    @listing = assign(:listing, stub_model(Listing,
      :user => nil,
      :brand => nil,
      :category => nil,
      :size => nil,
      :gender => nil,
      :title => "MyString",
      :description => "MyString",
      :sale_price => 1,
      :original_price => 1,
      :price => 1,
      :status => "MyString",
      :condition => "MyString"
    ))
  end

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do
      assert_select "input#listing_user[name=?]", "listing[user]"
      assert_select "input#listing_brand[name=?]", "listing[brand]"
      assert_select "input#listing_category[name=?]", "listing[category]"
      assert_select "input#listing_size[name=?]", "listing[size]"
      assert_select "input#listing_gender[name=?]", "listing[gender]"
      assert_select "input#listing_title[name=?]", "listing[title]"
      assert_select "input#listing_description[name=?]", "listing[description]"
      assert_select "input#listing_sale_price[name=?]", "listing[sale_price]"
      assert_select "input#listing_original_price[name=?]", "listing[original_price]"
      assert_select "input#listing_price[name=?]", "listing[price]"
      assert_select "input#listing_status[name=?]", "listing[status]"
      assert_select "input#listing_condition[name=?]", "listing[condition]"
    end
  end
end
