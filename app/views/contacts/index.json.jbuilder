json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :email_1, :email_2, :phone_1, :phone_2, :date_of_birth, :address_1, :address_2, :city, :state, :zip
  json.url contact_url(contact, format: :json)
end
