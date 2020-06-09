class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
  	rename_column :contacts, :type, :type_contact
  end
end
