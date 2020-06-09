class CreateAnnonces < ActiveRecord::Migration[6.0]
  def change
    create_table :annonces do |t|
  		t.text :description 
  		t.timestamps
  		t.string :title
  		t.date :event_date
  		t.decimal :price
  		t.references :user, index: true
  		t.references :console, index: true
  		t.references :game, index: true
    end
  end
end
