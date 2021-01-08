require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @user = User.new(name: 'example', username: 'iser@mail.com', 
                  password: 'fooxit', password_confirmation: 'fooxit')
    @nouser = User.new(name: 'cool')
    @nousername = User.new(username: 'mai@com')
  end

  test "should be user valid" do
    assert @user.valid?
  end

  test "should user not valid" do
    assert_not @nouser.valid?
    assert_not @nousername.valid?
  end

  test "not accept name too long" do
    @user.name = "a" * 52
    assert_not @user.valid?
  end

  test "not accept email too long" do
    @user.username = "a"*150 + "@mail.com"
    assert_not @user.valid?
  end

  test "valid email format" do
     @user.username = "iiiii@civi.dig"
     assert @user.valid?
  end

  test "unique username" do
    duplicate_user = @user.dup
    duplicate_user.username = @user.username.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

end
