class ChangeColumn2 < ActiveRecord::Migration[6.0]
  def change
  	rename_table :users_locations, :user_locations
  end
end
