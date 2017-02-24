require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
    assert_select "title", "MyWeb"
  end

  test "should get profiel" do
    get profiel_url
    assert_response :success
    assert_select "title", "PROFIEL | MyWeb"
  end

end
