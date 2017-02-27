require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  def setup
    @work = Work.new(name: "My First", contents: "My first portfolio")
  end

  test "should be valid" do
    assert @work.valid?
  end

  test "name should be present" do
    @work.name = " "
    assert_not @work.valid?
  end

  test "name should not be too long" do
    @work.name = "a" * 51
    assert_not @work.valid?
  end

  test "contents should not be too long" do
    @work.contents = "a" * 501
  end
end
