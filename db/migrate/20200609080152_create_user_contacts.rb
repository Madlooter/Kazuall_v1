class CreateUserContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_contacts do |t|
  		t.references :contact, index: true
  		t.references :user, index: true
        t.timestamps
    end
  end
end
