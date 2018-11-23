class AddFieldsToPlace < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :name, :string
    add_column :places, :description, :string
  end
end
