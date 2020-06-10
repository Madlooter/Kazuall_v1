class AddIndexLocations < ActiveRecord::Migration[6.0]
  def change
  	  add_reference :locations, :user, index: true
  end
end
