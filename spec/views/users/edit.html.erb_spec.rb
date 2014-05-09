require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :email => "MyString",
      :username => "MyString",
      :name => "MyString",
      :password => "MyString",
      :profile_photo => "MyString",
      :bg_photo => "MyString",
      :gender => nil
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "input#user_username[name=?]", "user[username]"
      assert_select "input#user_name[name=?]", "user[name]"
      assert_select "input#user_password[name=?]", "user[password]"
      assert_select "input#user_profile_photo[name=?]", "user[profile_photo]"
      assert_select "input#user_bg_photo[name=?]", "user[bg_photo]"
      assert_select "input#user_gender[name=?]", "user[gender]"
    end
  end
end
