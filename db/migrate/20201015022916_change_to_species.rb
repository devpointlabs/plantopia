class ChangeToSpecies < ActiveRecord::Migration[6.0]
  def change
    rename_column :plants, :type, :species
  end
end
