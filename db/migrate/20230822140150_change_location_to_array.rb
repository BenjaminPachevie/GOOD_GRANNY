class ChangeLocationToArray < ActiveRecord::Migration[7.0]
  def change
    remove_column :grannies, :location
    add_column :grannies, :location, :string, array: true, default: []
  end
end
