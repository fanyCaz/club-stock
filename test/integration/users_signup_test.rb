require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid sign up" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "",
                                          email: "user@invalid",
                                          password: "fo",
                                          password_confirmation: "fff"
                                        } 
                                      }
    end
    assert_template 'users/new'
  end

end
