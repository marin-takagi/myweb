require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  def setup
    @contact = Contact.new(name: "Example", email: "user@example.com", title: "contact", body: "a" * 50 )
  end

  test "shoud be valid" do
     assert @contact.valid?
  end

  test "shoud be present" do
    @contact.name = " "
    @contact.email = " "
    @contact.title = " "
    @contact.body = " "
    assert_not @contact.valid?
  end

  test "title should not be too long" do
    @contact.title = "a" * 51
    assert_not @contact.valid?
  end

  test "body should not be too long" do
    @contact.body = "a" * 501
    assert_not @contact.valid?
  end

  test "name should not be too long" do
    @contact.name = "a" * 51
    assert_not @contact.valid?
  end

  test "email should not be too long" do
    @contact.email = "a" * 244 + "@example.com"
    assert_not @contact.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @contact.email = valid_address
      assert @contact.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      @contact.email = invalid_address
      assert_not @contact.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
end
