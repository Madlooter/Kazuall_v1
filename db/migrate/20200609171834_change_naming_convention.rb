class ChangeNamingConvention < ActiveRecord::Migration[6.0]
  def change
  	rename_table :users_locations, :user_locations
  	rename_table :users_badges, :user_badges
  	rename_table :users_consoles, :user_consoles
  	rename_table :users_contacts, :user_contacts
  end
end
