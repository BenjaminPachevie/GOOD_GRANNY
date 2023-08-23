class AddCoordinatesToGrannies < ActiveRecord::Migration[7.0]
  def change
    add_column :grannies, :latitude, :float
    add_column :grannies, :longitude, :float
  end
end
