class AddPricetoGranny < ActiveRecord::Migration[7.0]
  def change
    add_column :grannies, :price, :integer
  end
end
