class AddSlidedColumnToLandscapes < ActiveRecord::Migration
  def change
    add_column :landscapes, :slided, :boolean
  end
end
