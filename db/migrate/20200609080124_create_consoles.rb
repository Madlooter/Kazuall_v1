class CreateConsoles < ActiveRecord::Migration[6.0]
  def change
    create_table :consoles do |t|
  		t.string :name
  		t.boolean :available
        t.timestamps
    end
  end
end
