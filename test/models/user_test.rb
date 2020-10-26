require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(email: "khabib@ufc.com", firstName: "Khabib", lastName: "Nurmagomedov", 
    phoneNumber: "112", password: "foobarfoo", password_confirmation: "foobarfoo")
  end

  #Testing validity of the User object
  test "should be valid" do
    assert @user.valid?
  end


  #Testing for required presence of User attributes
  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "firstName should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "lastName should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "phoneNumber should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end


  #Testing for length of email, just in case 255 char limit
  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end


  #Validating email address
  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end


  #Validating password
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 8
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 7
    assert_not @user.valid?
  end

end
