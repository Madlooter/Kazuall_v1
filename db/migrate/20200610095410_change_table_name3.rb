class ChangeTableName3 < ActiveRecord::Migration[6.0]
  def change
  	rename_table :annonces_tags, :annonce_tags
  end
end
