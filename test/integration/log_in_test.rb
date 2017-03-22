require 'test_helper'

class LogInTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:Non)
  end

  test "login with valid information followed by logout" do
    get login_path
    post login_path, params: { session: { name:    @user.name,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to root_path
    follow_redirect!
    assert_template 'static_pages/home'
    assert_select "a[href=?]", logout_path
  #  assert_select "a[href=?]"
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to root_url
    follow_redirect!
    assert_select "a[href=?]", logout_path,      count: 0
  #  assert_select "a[href=?]", user_path(@user), count: 0
  end
end
