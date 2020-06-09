class CreateAnnoncesTags < ActiveRecord::Migration[6.0]
  def change
    create_table :annonces_tags do |t|
  		t.references :annonce, index: true
  		t.references :tag, index: true
        t.timestamps
    end
  end
end
