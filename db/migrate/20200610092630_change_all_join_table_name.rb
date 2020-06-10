class ChangeAllJoinTableName < ActiveRecord::Migration[6.0]
  def change
  	rename_table :users_badges, :user_badges
  	rename_table :users_consoles, :user_consoles
  	rename_table :users_games, :user_games
  	rename_table :users_contacts, :user_contacts
  	rename_table :consoles_games, :console_games
  end
end
