require 'rails_helper'

RSpec.describe "contacts/show", type: :view do
  before(:each) do
    @contact = assign(:contact, Contact.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email_1 => "Email 1",
      :email_2 => "Email 2",
      :phone_1 => "Phone 1",
      :phone_2 => "Phone 2",
      :address_1 => "Address 1",
      :address_2 => "Address 2",
      :city => "City",
      :state => "State",
      :zip => "Zip"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email 1/)
    expect(rendered).to match(/Email 2/)
    expect(rendered).to match(/Phone 1/)
    expect(rendered).to match(/Phone 2/)
    expect(rendered).to match(/Address 1/)
    expect(rendered).to match(/Address 2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
  end
end
