class CreateGrannies < ActiveRecord::Migration[7.0]
  def change
    create_table :grannies do |t|
      t.string :name
      t.text :presentation
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
