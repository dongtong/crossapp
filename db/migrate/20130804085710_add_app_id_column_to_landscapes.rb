class AddAppIdColumnToLandscapes < ActiveRecord::Migration
  def change
    add_column :landscapes, :app_id, :integer
  end
end
