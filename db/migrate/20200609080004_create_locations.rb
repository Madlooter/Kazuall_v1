class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
		t.integer :street_number
  		t.string :street_name
  		t.integer :post_code
  		t.references :city, index: true
     	t.timestamps
    end
  end
end
