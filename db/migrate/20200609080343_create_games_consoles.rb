class CreateGamesConsoles < ActiveRecord::Migration[6.0]
  def change
    create_table :games_consoles do |t|
  		t.references :game, index: true 
  		t.references :console, index: true
 		t.timestamps
    end
  end
end
