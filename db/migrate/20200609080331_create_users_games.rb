class CreateUsersGames < ActiveRecord::Migration[6.0]
  def change
    create_table :users_games do |t|
  		t.references :user, index: true 
  		t.references :game, index: true
        t.timestamps
    end
  end
end
