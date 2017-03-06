require 'test_helper'

class WorksControllerTest < ActionDispatch::IntegrationTest
  def setup
    @work = Work.new(name: "MyFirst", contents: "my first work")
  end

  test "should get index" do
    get index_path
    assert_response :success
  end

=begin
  test "should get show" do
    if @work
      get show_path
      assert_response :success
    end
  end
=end
end
