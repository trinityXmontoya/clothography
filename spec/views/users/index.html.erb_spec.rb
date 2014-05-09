require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :email => "Email",
        :username => "Username",
        :name => "Name",
        :password => "Password",
        :profile_photo => "Profile Photo",
        :bg_photo => "Bg Photo",
        :gender => nil
      ),
      stub_model(User,
        :email => "Email",
        :username => "Username",
        :name => "Name",
        :password => "Password",
        :profile_photo => "Profile Photo",
        :bg_photo => "Bg Photo",
        :gender => nil
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Profile Photo".to_s, :count => 2
    assert_select "tr>td", :text => "Bg Photo".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
