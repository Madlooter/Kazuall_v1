class CreateUsersBadges < ActiveRecord::Migration[6.0]
  def change
    create_table :users_badges do |t|
  		t.references :user, index: true 
  		t.references :badge, index: true
        t.timestamps
    end
  end
end
