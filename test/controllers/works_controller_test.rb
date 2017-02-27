require 'test_helper'

class WorksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get index_path
    assert_response :success
  end

  test "should get show" do
    get show_path
    assert_response :success
  end

end
