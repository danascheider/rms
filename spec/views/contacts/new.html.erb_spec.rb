require 'rails_helper'

RSpec.describe "contacts/new", type: :view do
  before(:each) do
    assign(:contact, Contact.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :email_1 => "MyString",
      :email_2 => "MyString",
      :phone_1 => "MyString",
      :phone_2 => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders new contact form" do
    render

    assert_select "form[action=?][method=?]", contacts_path, "post" do

      assert_select "input#contact_first_name[name=?]", "contact[first_name]"

      assert_select "input#contact_last_name[name=?]", "contact[last_name]"

      assert_select "input#contact_email_1[name=?]", "contact[email_1]"

      assert_select "input#contact_email_2[name=?]", "contact[email_2]"

      assert_select "input#contact_phone_1[name=?]", "contact[phone_1]"

      assert_select "input#contact_phone_2[name=?]", "contact[phone_2]"

      assert_select "input#contact_address_1[name=?]", "contact[address_1]"

      assert_select "input#contact_address_2[name=?]", "contact[address_2]"

      assert_select "input#contact_city[name=?]", "contact[city]"

      assert_select "input#contact_state[name=?]", "contact[state]"

      assert_select "input#contact_zip[name=?]", "contact[zip]"
    end
  end
end
