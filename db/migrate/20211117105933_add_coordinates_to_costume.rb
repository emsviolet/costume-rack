class AddCoordinatesToCostume < ActiveRecord::Migration[6.0]
  def change
    add_column :costumes, :latitude, :float
    add_column :costumes, :longitude, :float
  end
end
