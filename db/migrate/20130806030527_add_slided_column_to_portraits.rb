class AddSlidedColumnToPortraits < ActiveRecord::Migration
  def change
    add_column :portraits, :slided, :boolean
  end
end
