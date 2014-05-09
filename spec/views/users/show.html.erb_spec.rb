require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "Email",
      :username => "Username",
      :name => "Name",
      :password => "Password",
      :profile_photo => "Profile Photo",
      :bg_photo => "Bg Photo",
      :gender => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Profile Photo/)
    expect(rendered).to match(/Bg Photo/)
    expect(rendered).to match(//)
  end
end
