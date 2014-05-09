require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :email => "MyString",
      :username => "MyString",
      :name => "MyString",
      :password => "MyString",
      :profile_photo => "MyString",
      :bg_photo => "MyString",
      :gender => nil
    ).as_new_record)
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do
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
