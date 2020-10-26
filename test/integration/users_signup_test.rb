require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { firstName:  "",
                                         lastName: "",
                                         phoneNumber: "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template 'users/new'
    
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: { firstName:  "Example",
                                         lastName:  "Example",
                                         phoneNumber:  "3332",
                                         email: "user@example.com",
                                         password:              "passwordabc",
                                         password_confirmation: "passwordabc" } }
    end
    follow_redirect!
    assert_template 'users/show'
  end
  
end
