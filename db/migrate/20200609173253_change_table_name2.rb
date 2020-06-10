class ChangeTableName2 < ActiveRecord::Migration[6.0]
  def change
  	rename_table :user_locations, :users_locations

  end
end
