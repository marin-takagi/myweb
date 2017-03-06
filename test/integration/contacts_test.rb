require 'test_helper'

class ContactsTest < ActionDispatch::IntegrationTest
  test "invalid contact information" do
    get new_contact_path
    assert_no_difference 'Contact.count' do
      post contacts_path, params: { contact: { name:  "",
                                         email: "user@invalid",
                                         title: "",
                                         body: "a" * 501 } }
    end
    assert_template 'contacts/new'
  end
end
