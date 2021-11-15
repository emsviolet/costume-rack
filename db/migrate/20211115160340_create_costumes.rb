class CreateCostumes < ActiveRecord::Migration[6.0]
  def change
    create_table :costumes do |t|
      t.string :name
      t.text :description
      t.string :size
      t.string :location
      t.string :category
      t.string :color
      t.integer :price
      t.references :user, null: false, foreign_key: true
      t.string :occasion
      t.string :condition

      t.timestamps
    end
  end
end
