require 'spec_helper'

describe "listings/show" do
  before(:each) do
    @listing = assign(:listing, stub_model(Listing,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Condition/)
  end
end
