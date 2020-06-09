class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
  		t.string :type
  		t.string :value
  		t.integer :phone
  		t.integer :phone_2
     	t.timestamps
    end
  end
end
