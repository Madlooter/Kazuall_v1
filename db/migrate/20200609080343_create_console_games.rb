class CreateConsoleGames < ActiveRecord::Migration[6.0]
  def change
    create_table :console_games do |t|
  		t.references :game, index: true 
  		t.references :console, index: true
 		t.timestamps
    end
  end
end
