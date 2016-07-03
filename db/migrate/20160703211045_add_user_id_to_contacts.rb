class AddUserIdToContacts < ActiveRecord::Migration[5.0]
  def up
    add_column :contacts, :user_id, :integer
  end

  def down
    remove_column :contact, :user_id
  end
end
