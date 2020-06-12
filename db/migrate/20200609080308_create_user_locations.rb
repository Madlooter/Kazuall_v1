class CreateUserLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_locations do |t|
  		t.references :user, index: true
  		t.references :location, index: true
      	t.timestamps
    end
  end
end
