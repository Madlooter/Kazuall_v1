class ChangeColumn < ActiveRecord::Migration[6.0]
  def change
  	rename_table :games_consoles, :consoles_games
  end
end
