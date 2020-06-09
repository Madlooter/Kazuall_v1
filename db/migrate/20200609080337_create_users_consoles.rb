class CreateUsersConsoles < ActiveRecord::Migration[6.0]
  def change
    create_table :users_consoles do |t|
  		t.references :user, index: true
  		t.references :console, index: true
        t.timestamps
    end
  end
end
