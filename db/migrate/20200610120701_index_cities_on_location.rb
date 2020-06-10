class IndexCitiesOnLocation < ActiveRecord::Migration[6.0]
  def change
  	add_reference :cities, :location, index: true
  end
end
