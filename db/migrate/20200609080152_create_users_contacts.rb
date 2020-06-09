class CreateUsersContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :users_contacts do |t|
  		t.references :contact, index: true
  		t.references :user, index: true
        t.timestamps
    end
  end
end
