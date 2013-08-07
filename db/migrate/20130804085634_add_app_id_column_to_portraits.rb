class AddAppIdColumnToPortraits < ActiveRecord::Migration
  def change
    add_column :portraits, :app_id, :integer
  end
end
